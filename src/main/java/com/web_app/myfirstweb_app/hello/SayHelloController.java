package com.web_app.myfirstweb_app.hello;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
@Controller
public class SayHelloController {
    @RequestMapping("say-hello")
    @ResponseBody
    public String sayHello() {

        return"Hello....!!!!!What are you learning";
    }

    //D:\SB JAVA\myfirstweb_app\src\main\resources\META-INF\resources\WEB-INF\jsp\sayHello.jsp
    @RequestMapping("say-hello-jsp")
    public String sayHelloJsp() {

        return"sayHello";
    }
      /*   @RequestMapping("logins")
        //@ResponseBody
        public String sayHelloLoginsJsp() {
            return"logins";
        }*/
    

}
