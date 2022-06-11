package realestate.supplier;

import realestate.entity.Address;

import java.util.Arrays;
import java.util.List;


public class AddressSupplier {

    public static Address getAddress(){
        return new Address()
                .setId(1L)
                .setCity("Beograd")
                .setMunicipality("Zemun")
                .setStreet("Ohridska")
                .setStreetNumber(7);
    }

    public static List<Address> getAddresses(){
        return Arrays.asList(
                new Address()
                        .setId(1L)
                        .setCity("Beograd")
                        .setMunicipality("Zemun")
                        .setStreet("Ohridska")
                        .setStreetNumber(7),
                new Address()
                        .setId(2L)
                        .setCity("Beograd")
                        .setMunicipality("Zemun")
                        .setStreet("Prvomajska")
                        .setStreetNumber(23)
        );
    }
}
