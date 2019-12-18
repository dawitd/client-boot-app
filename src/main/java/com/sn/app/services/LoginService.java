package com.sn.app.services;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.sn.app.config.publicVars;
import com.sn.app.domain.Person;
import org.apache.tomcat.util.codec.binary.Base64;
import org.springframework.http.*;
import org.springframework.web.client.RestTemplate;

import java.util.Arrays;

public interface LoginService {



public boolean login(String un, String pa) throws JsonProcessingException;
public boolean logout();
public boolean isAuthenticated();


}
