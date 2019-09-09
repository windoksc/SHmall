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
	private Member s;
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

	// 메인화면 페이지
	@RequestMapping(value = "main", method = { RequestMethod.GET, RequestMethod.POST })
	public String main(HttpServletRequest request, HttpServletResponse resp, HttpSession httpSession) throws Exception {

		return "main";
	}
	
	// 회원가입 페이지
	@RequestMapping(value = "sigin", method = { RequestMethod.GET, RequestMethod.POST })
	public String sigin(Locale locale, Model model) {
		
		return "sigin";
	}
	
	// 로그인 페이지
	@RequestMapping(value = "logins", method = { RequestMethod.GET, RequestMethod.POST })
	public String logins(HttpServletRequest request, HttpServletResponse resp, HttpSession httpSession) throws Exception {
		
		return "login";
	}
		
	// 로그인 체크
	@RequestMapping(value = "loginCheck", method = { RequestMethod.GET, RequestMethod.POST })
	@ResponseBody
	public void login(HttpServletRequest request, HttpServletResponse resp, HttpSession httpSession) throws Exception {
		HashMap<String,Object> map = new HashMap<String, Object>();
		map.put("id",request.getParameter("id"));
		map.put("password",request.getParameter("pwd"));
		s.login(map);

		if (s.login(map).get(0).get("member_id")==null) {
			httpSession.setAttribute("login", null);
		} else if (s.login(map).get(0).get("admin").equals("1")) {
			httpSession.setAttribute("login", 2);
		} else {
			httpSession.setAttribute("login", 1);
		}
		request.getRequestDispatcher("main").forward(request, resp);
	}

	// 로그아웃
	@RequestMapping(value = "logout", method = { RequestMethod.GET, RequestMethod.POST })
	@ResponseBody
	public void logout(HttpServletRequest request, HttpServletResponse resp, HttpSession httpSession) throws Exception {
		httpSession.setAttribute("login", null);
		httpSession.invalidate();
		
		request.getRequestDispatcher("main").forward(request, resp);
	}
	
	// 장바구니 페이지
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
	
	// 회원 가입 등록
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
	
	// 품목 추가
	@RequestMapping(value = "addProduct", method = { RequestMethod.GET, RequestMethod.POST })
	public String addProduct(HttpServletRequest request, HttpServletResponse resp, HttpSession httpSession) throws Exception {

		return "addProduct";
	}
	
	// 품목 리스트
	@RequestMapping(value = "listProduct", method = { RequestMethod.GET, RequestMethod.POST })
	public String listProduct(HttpServletRequest request, HttpServletResponse resp, HttpSession httpSession) throws Exception {

		return "listProduct";
	}
	
	// 품목 상세
	@RequestMapping(value = "viewProduct", method = { RequestMethod.GET, RequestMethod.POST })
	public String viewProduct(HttpServletRequest request, HttpServletResponse resp, HttpSession httpSession) throws Exception {

		return "viewProduct";
	}
}
