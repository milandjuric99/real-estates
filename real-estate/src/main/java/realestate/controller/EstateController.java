package realestate.controller;

import net.kaczmarzyk.spring.data.jpa.domain.Between;
import net.kaczmarzyk.spring.data.jpa.domain.Equal;
import net.kaczmarzyk.spring.data.jpa.domain.In;
import net.kaczmarzyk.spring.data.jpa.domain.Like;
import net.kaczmarzyk.spring.data.jpa.web.annotation.And;
import net.kaczmarzyk.spring.data.jpa.web.annotation.Spec;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.util.UriComponentsBuilder;
import realestate.entity.Characteristic;
import realestate.entity.Estate;
import realestate.entity.EstatePhoto;
import realestate.entity.utils.PagingHeader;
import realestate.entity.utils.PagingResponse;
import realestate.service.impl.CharacteristicServiceImpl;
import realestate.service.impl.EstatePhotoServiceImpl;
import realestate.service.impl.EstateServiceImpl;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.Collection;
import java.util.List;
import java.util.Set;
import java.util.zip.DataFormatException;
import java.util.zip.Deflater;
import java.util.zip.Inflater;

@RestController
@CrossOrigin(origins = "*", methods = {RequestMethod.GET, RequestMethod.POST, RequestMethod.PUT, RequestMethod.DELETE})
@RequestMapping(value = "/api/estates")
public class EstateController {

    @Autowired
    private EstateServiceImpl estateService;

    @Autowired
    private EstatePhotoServiceImpl estatePhotoService;

    @Autowired
    private CharacteristicServiceImpl characteristicService;

    @GetMapping(value = "/")
    public ResponseEntity<List<Estate>> findAll(
            @And({
                    @Spec(path = "purpose", params = "purpose", spec = Like.class),
                    @Spec(path = "city", params = "city", spec = Like.class),
                    @Spec(path = "municipality", params = "municipality", spec = In.class),
                    @Spec(path = "type", params = "type", spec = Like.class),
                    @Spec(path = "rooms", params = "rooms", spec = Like.class),
                    @Spec(path = "price", params = "price", spec = Equal.class),
                    @Spec(path = "price", params = {"priceMin", "priceMax"}, spec = Between.class)
            }) Specification<Estate> spec,
            Sort sort,
            @RequestHeader HttpHeaders headers){
        final PagingResponse response = estateService.get(spec, headers, sort);
        return new ResponseEntity<>(response.getElements(), returnHttpHeaders(response), HttpStatus.OK);
    }

    public HttpHeaders returnHttpHeaders(PagingResponse response) {
        HttpHeaders headers = new HttpHeaders();
        headers.set(PagingHeader.COUNT.getName(), String.valueOf(response.getCount()));
        headers.set(PagingHeader.PAGE_SIZE.getName(), String.valueOf(response.getPageSize()));
        headers.set(PagingHeader.PAGE_OFFSET.getName(), String.valueOf(response.getPageOffset()));
        headers.set(PagingHeader.PAGE_NUMBER.getName(), String.valueOf(response.getPageNumber()));
        headers.set(PagingHeader.PAGE_TOTAL.getName(), String.valueOf(response.getPageTotal()));
        return headers;
    }

    @GetMapping(value = "/{id}")
    public ResponseEntity<?> getEstate(@PathVariable("id") Long id){
        Estate estate = this.estateService.findById(id);
        if(estate == null){
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<>(estate, HttpStatus.OK);
    }

    @DeleteMapping(value = "/{id}")
    public ResponseEntity<?> deleteEstate(@PathVariable("id") Long id){
        Estate estate = this.estateService.findById(id);
        if(estate == null){
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        this.estateService.delete(estate);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }

    @PostMapping(value = "/")
    public ResponseEntity<?> addEstate(@RequestBody Estate estate,
                                       UriComponentsBuilder ucBuilder){
        HttpHeaders headers = new HttpHeaders();
        if(estate.getId() != null){
            return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
        }
        this.estateService.save(estate);
        headers.setLocation(ucBuilder.path("/api/appointment/{id}").buildAndExpand(estate.getId()).toUri());
        return new ResponseEntity<>(estate, headers, HttpStatus.CREATED);
    }

    @PutMapping(value = "/{id}")
    public ResponseEntity<?> updateAppointment(@PathVariable("id") Long id,
                                               @RequestBody Estate estate,
                                               UriComponentsBuilder ucBuilder){
        HttpHeaders headers = new HttpHeaders();
        boolean bodyIdMatchesPathId = estate.getId() == null || id.equals(estate.getId());
        if(!bodyIdMatchesPathId){
            return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
        }
        Estate updatedEstate = this.estateService.findById(id);
        if(updatedEstate == null){
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        this.estateService.save(updatedEstate);
        headers.setLocation(ucBuilder.path("/api/appointment/{id}").buildAndExpand(estate.getId()).toUri());
        return new ResponseEntity<>(updatedEstate, headers, HttpStatus.OK);
    }

    @PutMapping(value = "/{estateId}/add-characteristic/{characteristicId}")
    public ResponseEntity<?> addCharacteristicToEstate(@PathVariable("estateId") Long estateId,
                                                       @PathVariable("characteristicId") Long characteristicId){
        Characteristic characteristic = this.characteristicService.findById(characteristicId);
        Estate updatedEstate = this.estateService.findById(estateId);
        updatedEstate.getCharacteristics().add(characteristic);
        this.estateService.save(updatedEstate);
        return new ResponseEntity<>(updatedEstate, HttpStatus.NO_CONTENT);

    }
}
