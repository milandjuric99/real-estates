package realestate.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import realestate.entity.Address;
import realestate.repository.AddressRepository;
import realestate.service.AddressService;

import java.util.Collection;

@Service
public class AddressServiceImpl implements AddressService {

    @Autowired
    private AddressRepository addressRepository;

    @Override
    public Address findById(Long id) {
        return this.addressRepository.getById(id);
    }

    @Override
    public Collection<Address> findAll() {
        return this.addressRepository.findAll();
    }

    @Override
    public void save(Address address) {
        this.addressRepository.save(address);
    }

    @Override
    public void delete(Address address) {
        this.addressRepository.delete(address);
    }
}
