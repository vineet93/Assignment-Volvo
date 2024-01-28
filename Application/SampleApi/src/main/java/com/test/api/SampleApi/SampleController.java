package com.test.api.SampleApi;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;

@RestController
public class SampleController {


    @GetMapping("/api")
    public String volvoApi(){

        return "Welcome to 2022";
    }
    @GetMapping("/agent")
    private String getUserAgent(HttpServletRequest request) {
        return request.getHeader("user-agent");
    }
}
