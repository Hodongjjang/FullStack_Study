package chap09.util;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CookieUtils {

	HttpServletRequest request;
	HttpServletResponse responese;
	
	public CookieUtils(HttpServletRequest request,HttpServletResponse responese) {
		this.request = request;
		this.responese = responese;
	}
	
	public boolean exist(String name, String path) {
		Cookie[] cookies = request.getCookies();
		
		if(cookies == null) {
			return false;
		}
		
		for(Cookie cookie : cookies) {
			if(cookie.getName().equals(name)) {
				return true;
			}
		}
		
		return false;
	}
	
}
