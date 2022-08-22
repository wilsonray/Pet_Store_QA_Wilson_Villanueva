package karate.createClient;

import com.intuit.karate.junit5.Karate;

public class createClientRunner {
    @Karate.Test
    Karate testSample(){
        return Karate.run("classpath:karate/createClient/createClient.feature").relativeTo(getClass());
    }
}
