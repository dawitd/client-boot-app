package com.sn.app.Controllers;

import org.springframework.http.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.RestTemplate;

import java.util.Arrays;

@Controller
public class HomeController {
    static final String all = "http://localhost:8080/person/all";
    @RequestMapping("home")
    public String Home(Model model){

        // HttpHeaders
        HttpHeaders headers = new HttpHeaders();

        headers.setAccept(Arrays.asList(MediaType.APPLICATION_JSON));
        // Request to return JSON format
        headers.setContentType(MediaType.APPLICATION_JSON);
        headers.set("my_other_key", "my_other_value");

        // HttpEntity<String>: To get result as String.
        HttpEntity<String> entity = new HttpEntity<String>(headers);

        // RestTemplate
        RestTemplate restTemplate = new RestTemplate();

        // Send request with GET method, and Headers.
        ResponseEntity<String> response = restTemplate.exchange(all, //
                HttpMethod.GET, entity, String.class);

        String result = response.getBody();

        System.out.println(result);
        model.addAttribute("obj", result);
        return "index";
    }
    @RequestMapping(value={"/","login"})
    public String home(){
        return "login";
    }

    @RequestMapping(value = "/login",  method = RequestMethod.POST)
    public String newsfeed(){
        return "newsfeed";
    }

    @RequestMapping(value = "/newsfeed",  method = RequestMethod.GET)
    public String homenewsfeed(){
        return "newsfeed";
    }

    @RequestMapping(value = "/timeline",  method = RequestMethod.GET)
    public String timelinenewsfeed(){
        return "timeline";
    }

    @RequestMapping(value = "/profile",  method = RequestMethod.GET)
    public String profilenewsfeed(){
        return "profile";
    }

    @RequestMapping(value = "/logout",  method = RequestMethod.GET)
    public String logoutnewsfeed(){
        return "login";
    }

    @RequestMapping(value = "/Signup",  method = RequestMethod.GET)
    public String Signuplogin(){
        return "Signup";
    }

    @RequestMapping(value = "/editprofile",  method = RequestMethod.GET)
    public String editprofile(){
        return "editprofile";
    }

}
