package realestate.service;

import realestate.entity.Address;

public interface AddressService {

    Address findByStreet(String street);
}
