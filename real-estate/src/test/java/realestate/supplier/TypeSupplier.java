package realestate.supplier;

import realestate.entity.Type;

import java.util.Arrays;
import java.util.List;

public class TypeSupplier {

    public static Type getType(){
        return new Type()
                .setId(1L)
                .setName("Test");
    }

    public static List<Type> getTypes(){
        return Arrays.asList(
            new Type()
                .setId(1L)
                .setName("Test1"),

            new Type()
                .setId(2L)
                .setName("Test2")
        );
    }
}
