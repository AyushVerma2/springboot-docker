package com.springboot.docker.example.com.springboot.docker;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class DemoController {

    @GetMapping
    public String getDemoData(){
        return "this is demo project for springboot+ docker";
    }
}
