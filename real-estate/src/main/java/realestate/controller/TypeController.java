package realestate.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import realestate.entity.Type;
import realestate.service.impl.TypeServiceImpl;

import java.util.Collection;

@RestController
@CrossOrigin(origins = "*", methods = {RequestMethod.GET, RequestMethod.POST, RequestMethod.PUT, RequestMethod.DELETE})
@RequestMapping(value = "/api/types")
public class TypeController {

    @Autowired
    private TypeServiceImpl typeService;

    @GetMapping(value = "/")
    public ResponseEntity<?> getTypes(){
        Collection<Type> types = this.typeService.findAll();
        if(types == null){
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<>(types, HttpStatus.OK);
    }

    @GetMapping(value = "/{id}")
    public ResponseEntity<?> getType(@PathVariable("id") Long id){
        Type type = this.typeService.findById(id);
        if(type == null){
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<>(type, HttpStatus.OK);
    }
}
