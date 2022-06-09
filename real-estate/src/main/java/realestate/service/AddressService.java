package realestate.service;

import realestate.entity.Address;

import java.util.Collection;

public interface AddressService {

    Address findById(Long id);
    Collection<Address> findAll();
    void save(Address address);
    void delete(Address address);
}
