package com.web_app.myfirstweb_app.login;

import org.springframework.stereotype.Service;

@Service
public class AuthenticationService {

    public boolean authenticate (String username,String password){
        
        boolean isValiduser=username.equalsIgnoreCase("alphons");
        boolean isValidpassword=password.equalsIgnoreCase("dummy");
        
        return isValiduser && isValidpassword;


    }

}
