package realestate.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import realestate.entity.Estate;
import realestate.entity.EstatePhoto;
import realestate.service.impl.EstatePhotoServiceImpl;
import realestate.service.impl.EstateServiceImpl;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.*;
import java.util.zip.DataFormatException;
import java.util.zip.Deflater;
import java.util.zip.Inflater;

@RestController
@CrossOrigin(origins = "*", methods = {RequestMethod.GET, RequestMethod.POST, RequestMethod.PUT, RequestMethod.DELETE})
@RequestMapping(value = "/api/photo")
public class EstatePhotoController {

    @Autowired
    private EstatePhotoServiceImpl estatePhotoService;
    @Autowired
    private EstateServiceImpl estateService;

    @Value("${file.upload-dir}")
    String FILE_DIRECTORY;

    @GetMapping(value = "/")
    public ResponseEntity<?> getPhotos(){
        Collection<EstatePhoto> photos = this.estatePhotoService.findAll();
        if(photos == null){
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<>(photos, HttpStatus.OK);
    }

    @GetMapping(value = "/{id}")
    public ResponseEntity<?> getPhoto(@PathVariable("id") Long id){
        EstatePhoto photo = this.estatePhotoService.findById(id);
        if(photo == null){
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<>(photo, HttpStatus.OK);
    }

    @PostMapping("/upload")
    public ResponseEntity<?> fileUpload(@RequestParam("File") MultipartFile image,
                                        EstatePhoto estatePhoto) throws IOException {

        if(image.isEmpty()){
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        try {

            estatePhoto.setPhoto(image.getBytes());
            compressBytes(estatePhoto.getPhoto());
            Path path = Paths.get(FILE_DIRECTORY + image.getOriginalFilename());
            Files.write(path, estatePhoto.getPhoto());
            this.estatePhotoService.save(estatePhoto);
            return new ResponseEntity<>(HttpStatus.CREATED);
        }catch(IOException ioe){
            ioe.printStackTrace();
        }

        return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);

    }

    @DeleteMapping(value = "/{id}")
    public ResponseEntity<?> deletePhoto(@PathVariable("id") Long id){
        EstatePhoto estatePhoto = this.estatePhotoService.findById(id);
        if(estatePhoto == null){
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        this.estatePhotoService.delete(estatePhoto);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
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
