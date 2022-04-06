package ztrainapi.products;

import com.intuit.karate.junit5.Karate;

public class ProductRunner {
    @Karate.Test
    Karate testProduct() {
        return Karate.run("products").relativeTo(ProductRunner.class);
    }
}
