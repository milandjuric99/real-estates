package realestate.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import realestate.entity.Characteristic;
import realestate.service.impl.CharacteristicServiceImpl;

import java.util.Collection;

@RestController
@CrossOrigin(origins = "*", methods = {RequestMethod.GET, RequestMethod.POST, RequestMethod.PUT, RequestMethod.DELETE})
@RequestMapping(value = "/api/characteristics")
public class CharacteristicController {

    @Autowired
    private CharacteristicServiceImpl characteristicService;

    @GetMapping(value = "/")
    public ResponseEntity<?> getCharacteristics(){
        Collection<Characteristic> characteristics = this.characteristicService.findAll();
        if(characteristics == null){
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<>(characteristics, HttpStatus.OK);
    }

    @GetMapping(value = "/{id}")
    public ResponseEntity<?> getCharacteristic(@PathVariable("id") Long id){
        Characteristic characteristic = this.characteristicService.findById(id);
        if(characteristic == null){
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<>(characteristic, HttpStatus.OK);
    }
}
