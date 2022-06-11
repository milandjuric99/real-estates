package realestate.supplier;

import realestate.entity.Furniture;

import java.util.Arrays;
import java.util.List;

public class FurnitureSupplier {

    public static Furniture getFurniture(){
        return new Furniture()
                .setId(1L)
                .setName("Test");
    }

    public static List<Furniture> getFurnitures(){
        return Arrays.asList(
                new Furniture()
                        .setId(1L)
                        .setName("Test1"),
                new Furniture()
                        .setId(2L)
                        .setName("Test2")
        );
    }
}
