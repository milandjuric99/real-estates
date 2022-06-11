package realestate.supplier;

import realestate.entity.Purpose;

import java.util.Arrays;
import java.util.List;

public class PurposeSupplier {

    public static Purpose getPurpose(){
        return new Purpose()
                .setId(1L)
                .setName("Test");
    }

    public static List<Purpose> getPurposes(){
        return Arrays.asList(
                new Purpose()
                        .setId(1L)
                        .setName("Test1"),
                new Purpose()
                        .setId(2L)
                        .setName("Test2")
        );
    }
}
