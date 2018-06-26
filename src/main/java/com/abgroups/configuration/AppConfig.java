package com.abgroups.configuration;


import org.apache.log4j.Logger;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;


import com.abgroups.utils.IConstant;
 
@Configuration
@EnableWebMvc
@ComponentScan(basePackages =IConstant.BASE_PACKAGE)
public class AppConfig extends WebMvcConfigurerAdapter{
	
	
	Logger logger =Logger.getLogger(AppConfig.class);
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		logger.info("in message >>>>>>>>>>>>");

		registry.addResourceHandler(IConstant.RESOURCE_HANDLER)
				.addResourceLocations(IConstant.RESOURCE_LOCATION);

	}


	@Bean
	public ViewResolver viewResolver() {
	InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
	viewResolver.setViewClass(JstlView.class);
	viewResolver.setPrefix(IConstant.JSP_PACKAGE);
	viewResolver.setSuffix(IConstant.JSP_EXTANTION);
	return viewResolver;
	}
}
	