package realestate.repository;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.junit.jupiter.MockitoExtension;
import realestate.entity.Address;
import realestate.repositoryMock.AddressRepositoryMock;
import realestate.supplier.AddressSupplier;

import java.util.ArrayList;
import java.util.Collection;

@ExtendWith(MockitoExtension.class)
public class AddressRepositoryTest {

    @Mock
    private AddressRepositoryMock addressRepository;

    @BeforeAll
    static void prepareTests(){
    }

    @Test
    void shouldFindAll(){
        Mockito.when(this.addressRepository.findAll()).thenReturn(new ArrayList<>(AddressSupplier.getAddresses()));

        Collection<Address> addresses = this.addressRepository.findAll();

        Assertions.assertNotNull(addresses);
        Mockito.verify(this.addressRepository, Mockito.times(1)).findAll();
    }

    @Test
    void shouldFindById(){
        Mockito.when(this.addressRepository.getById(1L)).thenReturn(AddressSupplier.getAddress());

        Address address = this.addressRepository.getById(1L);

        Assertions.assertSame(address, this.addressRepository.getById(1L));
    }

    @Test
    void shouldCreate(){
        Address address = new Address();

        Mockito.when(this.addressRepository.save(address))
                .thenReturn(AddressSupplier.getAddress());

        this.addressRepository.save(address);
        Assertions.assertNotNull(address);
        System.out.println(address);
    }

    @Test
    void shouldDelete(){
        Address address = AddressSupplier.getAddress();

        this.addressRepository.delete(address);
        Mockito.verify(this.addressRepository).delete(Mockito.any());
    }

}
