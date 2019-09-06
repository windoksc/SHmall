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
		int a = 0;
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("id", id);
		map.put("pwd", pwd);
		System.out.println(map);
//		s.login(map);
//		if (s.login(map) == 0) {
//			a = 1;
//			httpSession.setAttribute("login", null);
//		} else {
//			httpSession.setAttribute("login", s.login(map));
//		}
		return a;
	}
	@RequestMapping(value = "logins", method = { RequestMethod.GET, RequestMethod.POST })
	public String logins(HttpServletRequest request, HttpServletResponse resp, HttpSession httpSession) throws Exception {
		
		return "login";
	}
	@RequestMapping(value = "logout", method = { RequestMethod.GET, RequestMethod.POST })
	@ResponseBody
	public void logout(HttpSession httpSession) throws Exception {
		httpSession.invalidate();
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
		return 0;
	}
	
	
}
