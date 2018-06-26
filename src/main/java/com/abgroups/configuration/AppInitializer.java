package com.abgroups.configuration;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRegistration;
 
import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.servlet.DispatcherServlet;

import com.abgroups.utils.IConstant;

public class AppInitializer implements WebApplicationInitializer  {

	@Override
	public void onStartup(ServletContext container) throws ServletException {
		AnnotationConfigWebApplicationContext ctx = new AnnotationConfigWebApplicationContext();
        ctx.register(AppConfig.class);
        ctx.setServletContext(container);
 
        ServletRegistration.Dynamic servlet = container.addServlet(IConstant.DISPATCHER_SERVLET_NAME, new DispatcherServlet(ctx));
 
        servlet.setLoadOnStartup(IConstant.INT_ONE);
        servlet.addMapping("/","/.php/*");
		
	}

}
