package com.ox5un5h1n3.web.trendarena.config;

import org.glassfish.jersey.server.ResourceConfig;

public class AppConfig extends ResourceConfig {
    public AppConfig(){
        packages("com.ox5un5h1n3.web.trendarena.controller");
        packages("com.ox5un5h1n3.web.trendarena.middleware");

    }
}
