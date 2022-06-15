package realestate.repository;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.junit.jupiter.MockitoExtension;
import realestate.entity.Furniture;
import realestate.repositoryMock.FurnitureRepositoryMock;
import realestate.supplier.FurnitureSupplier;

import java.util.Collection;

@ExtendWith(MockitoExtension.class)
public class FurnitureRepostoryTest {

    @Mock
    private FurnitureRepositoryMock furnitureRepository;

    @BeforeAll
    static void prepareTests(){}

    @Test
    void shouldFindAll(){
        Mockito.when(this.furnitureRepository.findAll()).thenReturn(FurnitureSupplier.getFurnitures());

        Collection<Furniture> furnitures = this.furnitureRepository.findAll();

        Assertions.assertNotNull(furnitures);
        Mockito.verify(this.furnitureRepository, Mockito.times(1)).findAll();
    }

    @Test
    void shouldFindById(){
        Mockito.when(this.furnitureRepository.getById(1L)).thenReturn(FurnitureSupplier.getFurniture());

        Furniture furniture = this.furnitureRepository.getById(1L);

        Assertions.assertSame(furniture, this.furnitureRepository.getById(1L));

    }
}
