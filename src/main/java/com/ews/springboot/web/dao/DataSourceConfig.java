package com.ews.springboot.web.dao;

import javax.sql.DataSource;

import org.springframework.boot.autoconfigure.jdbc.DataSourceBuilder;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class DataSourceConfig {
	
	@Bean
	@ConfigurationProperties("spring.datasource")
	public DataSource createDataSource() {
		return DataSourceBuilder.create().build();
	}

}
