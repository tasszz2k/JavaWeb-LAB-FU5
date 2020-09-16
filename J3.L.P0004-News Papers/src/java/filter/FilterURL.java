/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author TASS
 */
public class FilterURL implements Filter {

    private ServletContext context;

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        this.context = filterConfig.getServletContext();
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest servletRequest = (HttpServletRequest) request;
        HttpServletResponse servletResponse = (HttpServletResponse) response;
        String url = servletRequest.getRequestURI();

        if (checkURL(servletRequest, url) || url.equals(servletRequest.getContextPath() + "/") ) {
            chain.doFilter(servletRequest, servletResponse);
//            request.getRequestDispatcher("common/error.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("common/error.jsp").forward(request, response);
        }
    }

    boolean checkURL(HttpServletRequest request, String str) {
        String[] urls = {"/home-page", "/view", "/search","/template"};
        for (String url : urls) {
            if (str.startsWith(request.getContextPath() + url)) {
                return true;
            }
        }
        return false;
    }

    @Override
    public void destroy() {
    }

}
