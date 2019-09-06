package com.sm.project;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mysql.cj.Session;


/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	@Autowired
	private Ser s;
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "home", method = { RequestMethod.GET, RequestMethod.POST })
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	@RequestMapping(value = "sigin", method = { RequestMethod.GET, RequestMethod.POST })
	public String sigin(Locale locale, Model model) {
		
		return "sigin";
	}
	@RequestMapping(value = "login", method = { RequestMethod.GET, RequestMethod.POST })
	@ResponseBody
	public int login(HttpServletRequest request, HttpServletResponse resp, HttpSession httpSession) throws Exception {
		int a ;
		HashMap<String,Object> map = new HashMap<String, Object>();
		map.put("id",request.getParameter("id"));
		map.put("password",request.getParameter("pwd"));
		s.login(map);
	System.out.println(s.login(map).size() );
		if (s.login(map).get(0).get("member_id")==null) {
			a = 1;
			httpSession.setAttribute("login", null);
		} else {
			a=0;
			httpSession.setAttribute("id",s.login(map).get(0).get("member_id"));
			httpSession.setAttribute("password", s.login(map).get(0).get("password"));
		}
		return a;
	}
	
	@RequestMapping(value = "main", method = { RequestMethod.GET, RequestMethod.POST })
	public String main(HttpServletRequest request, HttpServletResponse resp, HttpSession httpSession) throws Exception {

		return "main";
	}
	
	@RequestMapping(value = "addProduct", method = { RequestMethod.GET, RequestMethod.POST })
	public String addProduct(HttpServletRequest request, HttpServletResponse resp, HttpSession httpSession) throws Exception {

		return "addProduct";
	}

	@RequestMapping(value = "logout", method = { RequestMethod.GET, RequestMethod.POST })
	@ResponseBody
	public String logout(HttpServletRequest request, HttpServletResponse resp, HttpSession httpSession) throws Exception {
		httpSession.invalidate();
		return "main";

	}

	@RequestMapping(value = "cart", method = { RequestMethod.GET, RequestMethod.POST })
	@ResponseBody
	public int cart(Session session,HttpServletRequest request, HttpServletResponse resp, HttpSession httpSession) throws Exception {
		int a=1;
		HashMap<String,Object> map = new HashMap<String, Object>();
		if(!httpSession.getAttribute("id").equals(null)) {
			map.put("id",httpSession.getAttribute("id"));
			map.put("productName",	request.getParameter("productName"));
			map.put("productName",	request.getParameter("price"));
		} else {
			map.put("id",httpSession.getId());
			map.put("productName",	request.getParameter("productName"));
			map.put("productName",	request.getParameter("price"));
		}
		
		return a;
	}	
	
	@RequestMapping(value = "logins", method = { RequestMethod.GET, RequestMethod.POST })
	public String logins(HttpServletRequest request, HttpServletResponse resp, HttpSession httpSession) throws Exception {
		
		return "login";
	}
	
	@RequestMapping(value = "siginup", method = { RequestMethod.GET, RequestMethod.POST })
	@ResponseBody 
	public int singup(HttpServletRequest request, HttpServletResponse resp,Locale locale) throws Exception {
		HashMap<String,Object> map = new HashMap<String, Object>();
		SimpleDateFormat format1 = new SimpleDateFormat ( "yyyy-MM-dd HH:mm:ss");
		Date time = new Date();
		String time2 = format1.format(time);

		map.put("id",request.getParameter("memberId"));
		map.put("email",request.getParameter("firstemail")+"@"+request.getParameter("secendemail"));
		map.put("password",request.getParameter("memberPwd"));
		map.put("name",request.getParameter("memberName"));

		map.put("phone",request.getParameter("memberNickname"));
		map.put("date",time2);
		s.singup(map);

		map.put("nickname",request.getParameter("memberNickname"));
		//System.out.println("�Է�");
		System.out.println(request.getParameter("memberPwd"));
//		s.singup(map);


		return 0;
	}
	
	
}
