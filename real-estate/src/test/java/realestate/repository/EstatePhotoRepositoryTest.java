package realestate.repository;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.junit.jupiter.MockitoExtension;
import realestate.entity.EstatePhoto;
import realestate.repositoryMock.EstatePhotoRepositoryMock;
import realestate.supplier.EstatePhotoSupplier;

import java.util.Collection;

@ExtendWith(MockitoExtension.class)
public class EstatePhotoRepositoryTest {

    @Mock
    private EstatePhotoRepositoryMock estatePhotoRepository;

    @BeforeAll
    static void prepareTests(){}

    @Test
    void shouldFindAll(){
        Mockito.when(this.estatePhotoRepository.findAll()).thenReturn(EstatePhotoSupplier.getPhotos());

        Collection<EstatePhoto> estatePhotos = this.estatePhotoRepository.findAll();

        Assertions.assertNotNull(estatePhotos);
        Mockito.verify(this.estatePhotoRepository, Mockito.times(1)).findAll();
    }

    @Test
    void shouldFindById(){
        Mockito.when(this.estatePhotoRepository.getById(1L)).thenReturn(EstatePhotoSupplier.getPhoto());

        EstatePhoto estatePhoto = this.estatePhotoRepository.getById(1L);

        Assertions.assertSame(estatePhoto, this.estatePhotoRepository.getById(1L));
    }

    @Test
    void shouldCreate(){
        EstatePhoto estatePhoto = new EstatePhoto();
        Mockito.when(this.estatePhotoRepository.save(estatePhoto)).thenReturn(EstatePhotoSupplier.getPhoto());

        this.estatePhotoRepository.save(estatePhoto);

        Assertions.assertNotNull(estatePhoto);
    }

    @Test
    void shouldDelete(){
        EstatePhoto estatePhoto = EstatePhotoSupplier.getPhoto();

        this.estatePhotoRepository.delete(estatePhoto);

        Mockito.verify(this.estatePhotoRepository).delete(Mockito.any(EstatePhoto.class));
    }


}
