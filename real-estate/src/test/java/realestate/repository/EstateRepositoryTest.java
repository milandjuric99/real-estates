package realestate.repository;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.junit.jupiter.MockitoExtension;
import realestate.entity.Estate;
import realestate.repositoryMock.EstateRepositoryMock;
import realestate.supplier.EstateSupplier;

import java.util.Collection;

@ExtendWith(MockitoExtension.class)
public class EstateRepositoryTest {

    @Mock
    private EstateRepositoryMock estateRepository;

    @BeforeAll
    static void prepareTests(){}

    @Test
    void shouldFindAll(){
        Mockito.when(this.estateRepository.findAll()).thenReturn(EstateSupplier.getEstates());

        Collection<Estate> estates = this.estateRepository.findAll();

        Assertions.assertNotNull(estates);
        Mockito.verify(this.estateRepository, Mockito.times(1)).findAll();
    }

    @Test
    void shouldFindById(){
        Mockito.when(this.estateRepository.getById(1L)).thenReturn(EstateSupplier.getEstate());

        Estate estate = this.estateRepository.getById(1L);

        Assertions.assertSame(estate, this.estateRepository.getById(1L));
    }

    @Test
    void shouldDelete(){
        Estate estate = EstateSupplier.getEstate();

        this.estateRepository.delete(estate);

        Mockito.verify(this.estateRepository).delete(Mockito.any(Estate.class));
    }

    @Test
    void shouldCreate(){
        Estate estate = new Estate();

        Mockito.when(this.estateRepository.save(estate)).thenReturn(EstateSupplier.getEstate());

        this.estateRepository.save(estate);
        Assertions.assertNotNull(estate);
    }
}
