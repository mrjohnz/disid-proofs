// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.disid.restful.config;

import com.disid.restful.config.WebMvcThymeleafUIConfiguration;
import com.disid.restful.datatables.DatatablesPageableHandlerMethodArgumentResolver;
import java.lang.Override;
import java.util.List;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.method.support.HandlerMethodArgumentResolver;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

privileged aspect WebMvcThymeleafUIConfiguration_Roo_Thymeleaf_Configuration {
    
    declare parents: WebMvcThymeleafUIConfiguration extends WebMvcConfigurerAdapter;
    
    declare @type: WebMvcThymeleafUIConfiguration: @Configuration;
    
    @Override
    public void WebMvcThymeleafUIConfiguration.addArgumentResolvers(List<HandlerMethodArgumentResolver> argumentResolvers) {
        argumentResolvers.add(datatablesPageableResolver());
    }
    
    public DatatablesPageableHandlerMethodArgumentResolver WebMvcThymeleafUIConfiguration.datatablesPageableResolver() {
        return new DatatablesPageableHandlerMethodArgumentResolver();
    }
    
}