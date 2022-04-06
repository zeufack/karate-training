package ztrainapi.users;

import com.intuit.karate.junit5.Karate;

class UsersRunner {

    @Karate.Test
    Karate testUsers() {
        return Karate.run("users").relativeTo(getClass());
        /**
         * execute using vscode runner
         */
        // return Karate.run("classpath:examples/users.feature");
    }

}
