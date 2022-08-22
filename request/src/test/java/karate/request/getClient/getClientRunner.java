package karate.request.getClient;

import com.intuit.karate.junit5.Karate;

public class getClientRunner {
    @Karate.Test
    Karate testSample(){
        return Karate.run("classpath:karate/request/getClient/getClient.feature").relativeTo(getClass());
    }
}
