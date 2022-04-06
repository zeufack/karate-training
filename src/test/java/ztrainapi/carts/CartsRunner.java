package ztrainapi.carts;

import com.intuit.karate.junit5.Karate;

public class CartsRunner {

    Karate cartText() {
        return Karate.run("carts").relativeTo(CartsRunner.class);
    }

}
