package karate.request.login;

import com.intuit.karate.junit5.Karate;

public class loginRunner {
    @Karate.Test
    Karate testSample(){
        return Karate.run("classpath:karate/request/login_post/login.feature").relativeTo(getClass());
    }
}
