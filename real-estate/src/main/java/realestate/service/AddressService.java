package realestate.service;

import realestate.entity.Address;

import java.util.Collection;

public interface AddressService {

    Address findByStreet(String street);
}
