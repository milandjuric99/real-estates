package realestate.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.util.UriComponentsBuilder;
import realestate.entity.Estate;
import realestate.entity.EstatePhoto;
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

    @GetMapping(value = "/")
    public ResponseEntity<?> getEstates(){
        Collection<Estate> estates = this.estateService.findAll();
        Collection<EstatePhoto> estatePhotos = this.estatePhotoService.findAll();
        for(Estate estate : estates){
            for(EstatePhoto estatePhoto : estatePhotos){
                decompressBytes(estatePhoto.getPhoto());
            }
        }
        if(estates == null){
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<>(estates, HttpStatus.OK);
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

    // compress the image bytes before storing it in the database
    public static void compressBytes(byte[] data) {
        Deflater deflater = new Deflater();
        deflater.setInput(data);
        deflater.finish();

        ByteArrayOutputStream outputStream = new ByteArrayOutputStream(data.length);
        byte[] buffer = new byte[1024];
        while (!deflater.finished()) {
            int count = deflater.deflate(buffer);
            outputStream.write(buffer, 0, count);
        }
        try {
            outputStream.close();
        } catch (IOException e) {
        }
        System.out.println("Compressed Image Byte Size - " + outputStream.toByteArray().length);

        outputStream.toByteArray();
    }

    // uncompress the image bytes before returning it to the angular application
    public static void decompressBytes(byte[] data) {
        Inflater inflater = new Inflater();
        inflater.setInput(data);
        ByteArrayOutputStream outputStream = new ByteArrayOutputStream(data.length);
        byte[] buffer = new byte[1024];
        try {
            while (!inflater.finished()) {
                int count = inflater.inflate(buffer);
                outputStream.write(buffer, 0, count);
            }
            outputStream.close();
        } catch (IOException ioe) {
        } catch (DataFormatException e) {
        }
        outputStream.toByteArray();
    }
}
