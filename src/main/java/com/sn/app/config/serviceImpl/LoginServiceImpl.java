package com.sn.app.config.serviceImpl;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.sn.app.services.LoginService;
import org.apache.tomcat.util.codec.binary.Base64;
import org.springframework.http.*;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import java.util.Arrays;

@Service
public class LoginServiceImpl implements LoginService {

    RestTemplate restTemplate = new RestTemplate();



    @Override
    public boolean login(String un, String pa) throws JsonProcessingException {

        String credentials = "ea-client:devglan-secret";
        String encodedCredentials = new String(Base64.encodeBase64(credentials.getBytes()));

        HttpHeaders headers = new HttpHeaders();
        headers.setAccept(Arrays.asList(MediaType.APPLICATION_JSON));
        headers.add("Authorization", "Basic " + encodedCredentials);
        HttpEntity<String> request = new HttpEntity<String>(headers);

        String access_token_url = "http://localhost:8080/oauth/token";
        access_token_url += "?username=" + un;
        access_token_url += "&password=" + pa;
        access_token_url += "&grant_type=password";
        access_token_url += "&redirect_uri=http://localhost:8090/";

        ResponseEntity<String> response = restTemplate.exchange(access_token_url, HttpMethod.POST, request, String.class);

        if (response.getStatusCode() == HttpStatus.UNAUTHORIZED){
            return false;
        }
        else return true;
    }
}
