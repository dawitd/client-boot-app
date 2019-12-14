package com.sn.app.Controllers;

import org.springframework.http.*;
import org.springframework.social.connect.Connection;
import org.springframework.social.facebook.api.Facebook;
import org.springframework.social.facebook.api.User;
import org.springframework.social.facebook.connect.FacebookConnectionFactory;
import org.springframework.social.google.connect.GoogleConnectionFactory;
import org.springframework.social.oauth2.AccessGrant;
import org.springframework.social.oauth2.OAuth2Operations;
import org.springframework.social.oauth2.OAuth2Parameters;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import java.util.Arrays;

@Controller
public class HomeController {
//    static final String all = "http://localhost:8080/person/all";
//    @RequestMapping("home")
//    public String Home(Model model){
//
//        // HttpHeaders
//        HttpHeaders headers = new HttpHeaders();
//
//        headers.setAccept(Arrays.asList(new MediaType[] { MediaType.APPLICATION_JSON }));
//        // Request to return JSON format
//        headers.setContentType(MediaType.APPLICATION_JSON);
//        headers.set("my_other_key", "my_other_value");
//
//        // HttpEntity<String>: To get result as String.
//        HttpEntity<String> entity = new HttpEntity<String>(headers);
//
//        // RestTemplate
//        RestTemplate restTemplate = new RestTemplate();
//
//        // Send request with GET method, and Headers.
//        ResponseEntity<String> response = restTemplate.exchange(all, //
//                HttpMethod.GET, entity, String.class);
//
//        String result = response.getBody();
//
//        System.out.println(result);
//        model.addAttribute("obj", result);
//        return "index";
//    }
    @RequestMapping(value={"login"})
    public String home(){
        return "login";
    }

    @RequestMapping(value = "/login",  method = RequestMethod.POST)
    public String newsfeed(){
        return "newsfeed";
    }

    @RequestMapping(value = {"/","/newsfeed"},  method = RequestMethod.GET)
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

    private FacebookConnectionFactory factory = new FacebookConnectionFactory("459570614997343",
            "527354cb4319414c73a7835ec7975ad6");

    private GoogleConnectionFactory goFactory = new GoogleConnectionFactory("418297174173-vhe9sjf9iqkucuvjid97963fhr1er3le.apps.googleusercontent.com","RZEYP1hucL5b_TFwSXDNuFhP");

    @GetMapping(value = "/go_login")
    public String google_login() {

        OAuth2Operations operations = goFactory.getOAuthOperations();
        OAuth2Parameters params = new OAuth2Parameters();

        params.setRedirectUri("http://localhost:8090");
        params.setScope("https://www.googleapis.com/auth/userinfo.profile");

        String url = operations.buildAuthenticateUrl(params);
        System.out.println("The URL is" + url);
        return "redirect:" + url;

    }

    @RequestMapping(value = "/googleLogin")
    public ModelAndView googleLogin(@RequestParam("code") String authorizationCode) {
        OAuth2Operations operations = goFactory.getOAuthOperations();
        AccessGrant accessToken = operations.exchangeForAccess(authorizationCode, "http://localhost:8090/forwardLogin",
                null);

        Connection<Facebook> connection = factory.createConnection(accessToken);
        Facebook goole = connection.getApi();
       // String[] fields = {"id", "first_name", "last_name"};
        User userProfile = goole.fetchObject("google",User.class);
        ModelAndView model = new ModelAndView("newsfeed");
        model.addObject("user", userProfile);
        return model;

    }


    @GetMapping(value = "/fb_login")
    public String fb_login() {

        OAuth2Operations operations = factory.getOAuthOperations();
        OAuth2Parameters params = new OAuth2Parameters();

        params.setRedirectUri("http://localhost:8090/forwardLogin");
        params.setScope("email,public_profile");

        String url = operations.buildAuthenticateUrl(params);
        System.out.println("The URL is" + url);
        return "redirect:" + url;

    }

    @RequestMapping(value = "/forwardLogin")
    public ModelAndView prodducer(@RequestParam("code") String authorizationCode) {
        OAuth2Operations operations = factory.getOAuthOperations();
        AccessGrant accessToken = operations.exchangeForAccess(authorizationCode, "http://localhost:8090/forwardLogin",
                null);

        Connection<Facebook> connection = factory.createConnection(accessToken);
        Facebook facebook = connection.getApi();
        String[] fields = {"id", "email", "first_name", "last_name"};
        User userProfile = facebook.fetchObject("me", User.class, fields);
        ModelAndView model = new ModelAndView("newsfeed");
        model.addObject("user", userProfile);
        return model;

    }
}
