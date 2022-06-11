package realestate.supplier;

import realestate.entity.Estate;

import java.util.Arrays;
import java.util.List;

public class EstateSupplier {

    public static Estate getEstate(){
        return new Estate()
                .setId(1L)
                .setAddress(AddressSupplier.getAddress())
                .setFurniture(FurnitureSupplier.getFurniture())
                .setPurpose(PurposeSupplier.getPurpose())
                .setDescription("testtest")
                .setType(TypeSupplier.getType())
                .setCharacteristics(CharacteristicSupplier.getCharacteristics())
                .setRooms(3)
                .setPrice(300.0)
                .setNumOfBathroom(1)
                .setFloor(3)
                .setPhotos(EstatePhotoSupplier.getPhotos())
                .setSquareFootage(54)
                .setTitle("TEST400");
    }

    public static List<Estate> getEstates(){
        return Arrays.asList(
                new Estate()
                        .setId(1L)
                        .setAddress(AddressSupplier.getAddress())
                        .setFurniture(FurnitureSupplier.getFurniture())
                        .setPurpose(PurposeSupplier.getPurpose())
                        .setDescription("testtest")
                        .setType(TypeSupplier.getType())
                        .setCharacteristics(CharacteristicSupplier.getCharacteristics())
                        .setRooms(3)
                        .setPrice(300.0)
                        .setNumOfBathroom(1)
                        .setFloor(3)
                        .setPhotos(EstatePhotoSupplier.getPhotos())
                        .setSquareFootage(54)
                        .setTitle("TEST400"),
                new Estate()
                        .setId(2L)
                        .setAddress(AddressSupplier.getAddress())
                        .setFurniture(FurnitureSupplier.getFurniture())
                        .setPurpose(PurposeSupplier.getPurpose())
                        .setDescription("testtest")
                        .setType(TypeSupplier.getType())
                        .setCharacteristics(CharacteristicSupplier.getCharacteristics())
                        .setRooms(4)
                        .setPrice(500.0)
                        .setNumOfBathroom(2)
                        .setFloor(5)
                        .setPhotos(EstatePhotoSupplier.getPhotos())
                        .setSquareFootage(64)
                        .setTitle("TEST200")
        );
    }
}
