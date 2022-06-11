package realestate.supplier;

import realestate.entity.EstatePhoto;

import java.util.Arrays;
import java.util.List;

public class EstatePhotoSupplier {

   static byte[] imageBytes = {1, 2, 3, 4, 5, 6};

    public static EstatePhoto getPhoto(){
        return new EstatePhoto()
                .setId(1L)
                .setPhoto(imageBytes);
    }

    public static List<EstatePhoto> getPhotos(){
        return Arrays.asList(
                new EstatePhoto()
                        .setId(1L)
                        .setPhoto(imageBytes),
                new EstatePhoto()
                        .setId(2L)
                        .setPhoto(imageBytes)
        );
    }


}
