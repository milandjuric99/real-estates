package realestate.repository;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.junit.jupiter.MockitoExtension;
import realestate.entity.Type;
import realestate.repositoryMock.TypeRepositoryMock;
import realestate.supplier.TypeSupplier;

import java.util.Collection;

@ExtendWith(MockitoExtension.class)
public class TypeRepositoryTest {

    @Mock
    private TypeRepositoryMock typeRepository;

    @BeforeAll
    static void prepareTests(){}

    @Test
    void shouldFindAll(){
        Mockito.when(this.typeRepository.findAll()).thenReturn(TypeSupplier.getTypes());

        Collection<Type> types = this.typeRepository.findAll();

        Assertions.assertNotNull(types);
        Mockito.verify(this.typeRepository, Mockito.times(1)).findAll();
    }

    @Test
    void shouldFindById(){
        Mockito.when(this.typeRepository.getById(1L)).thenReturn(TypeSupplier.getType());

        Type type = this.typeRepository.getById(1L);

        Assertions.assertSame(type, this.typeRepository.getById(1L));
    }
}
