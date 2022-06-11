package realestate.supplier;

import realestate.entity.Characteristic;

import java.util.Arrays;
import java.util.List;

public class CharacteristicSupplier {

    public static Characteristic getCharacteristic(){
        return new Characteristic()
                .setId(1L)
                .setName("Test");
    }

    public static List<Characteristic> getCharacteristics(){
        return Arrays.asList(
                new Characteristic()
                        .setId(1L)
                        .setName("Test2"),
                new Characteristic()
                        .setId(2L)
                        .setName("Test2")
        );
    }
}
