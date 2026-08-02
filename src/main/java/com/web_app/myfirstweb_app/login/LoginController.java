package com.web_app.myfirstweb_app.login;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes("name")
public class LoginController {

        private AuthenticationService authenticationService;
        
        public LoginController(AuthenticationService authenticationService) {
            this.authenticationService = authenticationService;
        }

        @RequestMapping(value = "/",method = RequestMethod.GET)
        public String sayHelloLoginJsp() {
            return"login";
        }
       @RequestMapping(value = "login",method = RequestMethod.POST)
        public String WelcomeJsp(@RequestParam String username,@RequestParam String password,ModelMap model) {
            
            if (authenticationService.authenticate(username, password)){
                model.put("name",username);
                return"welcome";
            }
            else
                model.put("errorMessage","Invalid Credentials...Try again.");
                return"login";

        }   
}
