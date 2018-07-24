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
import org.springframework.web.servlet.view.tiles3.TilesConfigurer;
import org.springframework.web.servlet.view.tiles3.TilesView;
import org.springframework.web.servlet.view.tiles3.TilesViewResolver;

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
	
	/**
	 * Resolves views selected for rendering by @Controllers to tiles resources
	 * in the Apache TilesConfigurer bean
	 */
	@Bean
	public TilesViewResolver getTilesViewResolver() {
		System.out.println("in getTilesViewResolver ...........................");
		TilesViewResolver tilesViewResolver = new TilesViewResolver();
		tilesViewResolver.setViewClass(TilesView.class);

		return tilesViewResolver;
	}
	
	/**
	 * Configures Apache tiles definitions bean used by Apache TilesViewResolver
	 * to resolve views selected for rendering by @Controllers
	 */
	@Bean
	public TilesConfigurer getTilesConfigure() {
		System.out.println("getTilesConfigure ...........................");
		TilesConfigurer tilesConfigurer = new TilesConfigurer();
		tilesConfigurer.setCheckRefresh(true);
		tilesConfigurer.setDefinitionsFactoryClass(TilesDefinitionsConfig.class);
		TilesDefinitionsConfig.addDefinitions();

		return tilesConfigurer;
	}
}
	