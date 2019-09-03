package com.sm.project;
 
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
import org.springframework.stereotype.Component;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.view.AbstractView;
// @Component > @Service
//              : ������ �����ӿ�ũ�� �����ϴ� ������Ʈ�� �Ϲ��� Ÿ�� 
//              : �����ڰ� ���� ������ ������ Ŭ������ ��� �ش� ������̼��� ����
//              : ( <=> @Bean : �����ڰ� ������ �Ұ����� �ܺ� ���̺귯���� Bean���� ��Ͻ� ���)
@Component("HandlerFile")

public class HandlerFile  extends AbstractView {
    private String filePath; // common
    private MultipartHttpServletRequest multipartRequest; // upload
    private Map<String, List<String>> fileNames; // upload
    private String oldName; // down
    private HttpServletResponse response; // down
    private byte[] fileByte; // down
 
    public HandlerFile() {}
    
    /**
     * common filePath
     * @return filePath
     */
    public String getFilePath(){
        return filePath;
    }
    /**
     * upload ������
     * @param multipartRequest
     * @param filePath
     */
    public HandlerFile(MultipartHttpServletRequest multipartRequest, String filePath) {
        this.multipartRequest = multipartRequest;
        this.filePath = filePath;
        fileNames = new HashMap<String, List<String>>();
    }
    /**
     * upload �ӽ����� ó�� ������
     * @param multipartRequest
     */
    public HandlerFile(MultipartHttpServletRequest multipartRequest) {
        this.multipartRequest = multipartRequest;
        this.filePath = multipartRequest.getSession().getServletContext().getRealPath("/resources/tempfile");
        fileNames = new HashMap<String, List<String>>();
    }
    /**
     * upload setter
     * @param multipartRequest
     * @param filePath
     * @return this
     */
    public HandlerFile setUpload(MultipartHttpServletRequest multipartRequest, String filePath) {
        this.multipartRequest = multipartRequest;
        this.filePath = filePath;
        fileNames = new HashMap<String, List<String>>();
        return this;
    }
    /**
     * upload �ӽ����� ó�� setter
     * @param multipartRequest
     * @return this
     */
    public HandlerFile setUpload(MultipartHttpServletRequest multipartRequest) {
        this.multipartRequest = multipartRequest;
        this.filePath = multipartRequest.getSession().getServletContext().getRealPath("/resources/tempfile");
        fileNames = new HashMap<String, List<String>>();
        return this;
    }
    /**
     * upload
     * @return Map<String, List<String>> fileNames
     */
    public Map<String, List<String>> getUploadFileName() {
        upload(true);
        return fileNames;
    }
    /**
     * upload save�̸� ��������
     * @param saveNameCreate
     * @return Map<String, List<String>> fileNames
     */
    public Map<String, List<String>> getUploadFileName(boolean saveNameCreate) {
        upload(saveNameCreate);
        return fileNames;
    }
    /**
     * ���� ���ε� ó��
     * @param saveNameCreate
     */
    private void upload(boolean saveNameCreate) {
        Iterator<String> itr = multipartRequest.getFileNames();
        List<String> oldNames = new ArrayList<String>();
        List<String> saveNames = new ArrayList<String>();
        StringBuffer sb = null;
        while (itr.hasNext()) { // ���� ���ϵ��� ��� ������.
            MultipartFile mpf = multipartRequest.getFile(itr.next());
            sb = new StringBuffer();
            String oldFileName = mpf.getOriginalFilename(); // ���ϸ�
            String saveFileName = sb.append(new SimpleDateFormat("yyyyMMdd").format(System.currentTimeMillis()))
                                    .append("-")
                                    .append(UUID.randomUUID().toString())
                                    .append(oldFileName.substring(oldFileName.lastIndexOf("."))).toString();
            String fileFullPath = null; // ���� ��ü ���
            if(saveNameCreate) {
                fileFullPath = filePath + "/" + saveFileName; 
            }else {
                fileFullPath = filePath + "/" + oldFileName;
            }
            try {
                // ��ΰ� ������ ����
                File targetDir = new File(fileFullPath);
                if(!targetDir.exists()) {
                    targetDir.mkdirs();
                }
                // ���� ����
                mpf.transferTo(new File(fileFullPath));
                oldNames.add(oldFileName);
                if(saveNameCreate) {
                    saveNames.add(saveFileName);
                }else {
                    saveNames.add(oldFileName);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        fileNames.put("oldNames", oldNames);
        fileNames.put("saveNames", saveNames);
    }
    
    /**
     * down ������
     * @param response
     * @param filePath
     * @param saveName
     * @param oldName
     */
    public HandlerFile(HttpServletResponse response, String filePath, String saveName, String oldName) {
        this.response = response;
        this.filePath = filePath + "/" + saveName;
        this.oldName = oldName;
    }
    /**
     * down setter
     * @param response
     * @param filePath
     * @param saveName
     * @param oldName
     * @return this
     */
    public HandlerFile setDown(HttpServletResponse response, String filePath, String saveName, String oldName) {
        this.response = response;
        this.filePath = filePath + "/" + saveName;
        this.oldName = oldName;

        return this;
    }
    /**
     * down
     * @return byte[] fileByte
     */
    public byte[] getDownloadFileByte() {
        dowonload();
        return fileByte;
    }
    /**
     * down
     */
    private void dowonload() {
        try {
            fileByte = FileUtils.readFileToByteArray(new File(filePath));
            response.setContentType("application/x-msdownload");
            response.setContentLength(fileByte.length);
            // �ٿ�ε�� ������ ���ϸ�
            
            response.setHeader("Content-Disposition", "attachment; fileName=\"" + URLEncoder.encode(oldName, "UTF-8") + "\";");
            response.setHeader("Content-Transfer-Encoding", "binary");
            response.setHeader("Pragma", "no-cache");
            response.setHeader("Cache-Control", "private");
            System.out.println(filePath);
            System.out.println(oldName);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    
    /**
     * delete ������
     * @param filePath
     * @param saveName
     */
    public HandlerFile(String filePath, String saveName) {
        this.filePath = filePath + "/" + saveName;
    }
    /**
     * delete setter
     * @param filePath
     * @param saveName
     * @return this
     */
    public HandlerFile setDelete(String filePath, String saveName) {
        this.filePath = filePath + "/" + saveName;
        return this;
    }
    /**
     * delete
     * @return boolean check
     */
    public boolean deleteFileExecute() {
        boolean check = false;
        File file = new File(filePath);
        if(file.exists()) {
            check = file.delete();
        }
        return check;
    }
    @Override
    protected void renderMergedOutputModel(Map<String, Object> map, HttpServletRequest req, 
                                                                                                 HttpServletResponse res) throws Exception {
        // TODO Auto-generated method stub
        

try {
            File file = (File)map.get("downloadFile");
            
            res.setContentType(getContentType());
            res.setContentLength((int) file.length());
            res.setHeader("Content-Disposition", "attachment; fileName=\"" + URLEncoder.encode(oldName, "UTF-8") + "\";");
            res.setHeader("Content-Transfer-Encoding", "binary");
            
            OutputStream out = res.getOutputStream();
            FileInputStream fis = null;
            
            fis = new FileInputStream(file);
            FileCopyUtils.copy(fis, out);
            
            fis.close(); 
            out.flush();
            
        } 
        catch (Exception e) {
            e.printStackTrace();
        }
    }
    
	}

 

