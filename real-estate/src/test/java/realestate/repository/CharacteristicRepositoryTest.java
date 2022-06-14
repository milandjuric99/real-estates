package realestate.repository;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.junit.jupiter.MockitoExtension;
import realestate.entity.Characteristic;
import realestate.repositoryMock.CharacteristicRepositoryMock;
import realestate.supplier.CharacteristicSupplier;

import java.util.Collection;
@ExtendWith(MockitoExtension.class)
public class CharacteristicRepositoryTest {

    @Mock
    private CharacteristicRepositoryMock characteristicRepository;

    @BeforeAll
    static void prepareTests(){

    }

    @Test
    void shouldFindAll(){
        Mockito.when(this.characteristicRepository.findAll()).thenReturn(CharacteristicSupplier.getCharacteristics());

        Collection<Characteristic> characteristics = this.characteristicRepository.findAll();

        Assertions.assertNotNull(characteristics);
        Mockito.verify(this.characteristicRepository, Mockito.times(1)).findAll();
    }

    @Test
    void shouldFindById(){
        Mockito.when(this.characteristicRepository.getById(1L)).thenReturn(CharacteristicSupplier.getCharacteristic());

        Characteristic characteristic = this.characteristicRepository.getById(1L);

        Assertions.assertSame(characteristic, this.characteristicRepository.getById(1L));
    }
}
