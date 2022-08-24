package karate.request.createClient;

import com.intuit.karate.junit5.Karate;

public class LoginRunner {
    @Karate.Test
    Karate testSample(){
        return Karate.run("classpath:karate/request/login/Login.feature").relativeTo(getClass());
    }
}
