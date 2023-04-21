package com.project.configuration;

import javax.sql.DataSource;

import org.springframework.boot.jdbc.DataSourceBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class DataSourceConfiguration {
    @Bean
    public DataSource getDataSource() {
        return DataSourceBuilder.create()
          .driverClassName("com.microsoft.sqlserver.jdbc.SQLServerDriver")
          .url("jdbc:sqlserver://localhost:1433;databaseName=BigGuyGear;encrypt=false;")
          .username("sa")
          .password("1111")
          .build();	
	}
}
