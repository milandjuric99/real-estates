package realestate.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import realestate.entity.Furniture;
import realestate.service.impl.FurnitureServiceImpl;

import java.util.Collection;

@RestController
@CrossOrigin(origins = "*", methods = {RequestMethod.GET, RequestMethod.POST, RequestMethod.PUT, RequestMethod.DELETE})
@RequestMapping(value = "/api/furnitures")
public class FurnitureController {

    @Autowired
    private FurnitureServiceImpl furnitureService;

    @GetMapping(value = "/")
    public ResponseEntity<?> getFurnitures(){
        Collection<Furniture> furnitures = this.furnitureService.findAll();
        if(furnitures == null){
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<>(furnitures, HttpStatus.OK);
    }

    @GetMapping(value = "/{id}")
    public ResponseEntity<?> getFurniture(@PathVariable("id") Long id){
        Furniture furniture = this.furnitureService.findById(id);
        if(furniture == null){
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<>(furniture, HttpStatus.OK);
    }

}
