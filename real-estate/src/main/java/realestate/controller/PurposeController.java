package realestate.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import realestate.entity.Purpose;
import realestate.service.impl.PurposeServiceImpl;

import java.util.Collection;

@RestController
@CrossOrigin(origins = "*", methods = {RequestMethod.GET, RequestMethod.POST, RequestMethod.PUT, RequestMethod.DELETE})
@RequestMapping(value = "/api/purpose")
public class PurposeController {

    @Autowired
    private PurposeServiceImpl purposeService;

    @GetMapping(value = "/")
    public ResponseEntity<?> getPurposes(){
        Collection<Purpose> purposes = this.purposeService.findAll();
        if(purposes == null){
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<>(purposes, HttpStatus.OK);
    }

    @GetMapping(value = "/{id}")
    public ResponseEntity<?> getPurpose(@PathVariable("id") Long id){
        Purpose purpose = this.purposeService.findById(id);
        if(purpose == null){
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<>(purpose, HttpStatus.OK);
    }
}
