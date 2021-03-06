package cn.edu.zju.filter;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Interceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
    //如果是登录页面则放行
    if(request.getRequestURI().indexOf("login.action")>=0){ return true; }
    HttpSession session = request.getSession();
    //如果用户已登录也放行
    if(session.getAttribute("user")!=null){ return true; }
    //用户没有登录跳转到登录页面
    request.getRequestDispatcher("/WEB-INF/views/signin.jsp").forward(request, response);
    return false;
    }

    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
}