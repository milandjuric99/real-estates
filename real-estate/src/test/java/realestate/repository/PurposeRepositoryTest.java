package realestate.repository;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.junit.jupiter.MockitoExtension;
import realestate.entity.Purpose;
import realestate.repositoryMock.PurposeRepositoryMock;
import realestate.supplier.PurposeSupplier;

import java.util.Collection;

@ExtendWith(MockitoExtension.class)
public class PurposeRepositoryTest {

    @Mock
    private PurposeRepositoryMock purposeRepository;

    @BeforeAll
    static void prepareTests(){}

    @Test
    void shouldFindAll(){
        Mockito.when(this.purposeRepository.findAll()).thenReturn(PurposeSupplier.getPurposes());

        Collection<Purpose> purposes = this.purposeRepository.findAll();

        Assertions.assertNotNull(purposes);
        Mockito.verify(this.purposeRepository, Mockito.times(1)).findAll();
    }

    @Test
    void shouldFindById(){
        Mockito.when(this.purposeRepository.getById(1L)).thenReturn(PurposeSupplier.getPurpose());

        Purpose purpose = this.purposeRepository.getById(1L);

        Assertions.assertSame(purpose, this.purposeRepository.getById(1L));
    }
}
