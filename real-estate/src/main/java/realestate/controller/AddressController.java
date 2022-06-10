package realestate.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.util.UriComponentsBuilder;
import realestate.entity.Address;
import realestate.service.impl.AddressServiceImpl;

import java.util.Collection;

@RestController
@CrossOrigin(origins = "*", methods = {RequestMethod.GET, RequestMethod.POST, RequestMethod.PUT, RequestMethod.DELETE})
@RequestMapping(value = "/api/address")
public class AddressController {

    @Autowired
    private AddressServiceImpl addressService;

    @GetMapping(value = "/")
    public ResponseEntity<?> getAddresses(){
        Collection<Address> addresses = this.addressService.findAll();
        if(addresses == null){
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<>(addresses, HttpStatus.OK);
    }

    @GetMapping(value = "/{id}")
    public ResponseEntity<?> getAddress(@PathVariable("id") Long id){
        Address address = this.addressService.findById(id);
        if(address == null){
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<>(address, HttpStatus.OK);
    }

    @PostMapping(value = "/")
    public ResponseEntity<?> addAddress(@RequestBody Address address,
                                        UriComponentsBuilder ucBuilder){
        HttpHeaders headers = new HttpHeaders();
        if(address.getId() != null){
            return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
        }
        this.addressService.save(address);
        headers.setLocation(ucBuilder.path("/api/address/{id}").buildAndExpand(address.getId()).toUri());
        return new ResponseEntity<>(address, headers, HttpStatus.CREATED);
    }

    @DeleteMapping(value = "/{id}")
    public ResponseEntity<?> deleteAddress(@PathVariable("id") Long id){
        Address address = this.addressService.findById(id);
        if(address == null){
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        this.addressService.delete(address);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }
}
