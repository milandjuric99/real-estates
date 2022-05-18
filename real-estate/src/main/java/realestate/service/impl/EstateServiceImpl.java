package realestate.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import realestate.entity.*;
import realestate.repository.*;
import realestate.service.EstateService;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.Collection;
import java.util.Optional;
import java.util.zip.Deflater;

@Service
public class EstateServiceImpl implements EstateService {


    private final EstateRepository estateRepository;
    private final AddressRepository addressRepository;
    private final TypeRepository typeRepository;
    private final FurnitureRepository furnitureRepository;
    private final PurposeRepository purposeRepository;

    @Autowired
    public EstateServiceImpl(EstateRepository estateRepository, AddressRepository addressRepository,
                             TypeRepository typeRepository, FurnitureRepository furnitureRepository,
                             PurposeRepository purposeRepository) {
        this.estateRepository = estateRepository;
        this.addressRepository = addressRepository;
        this.typeRepository = typeRepository;
        this.furnitureRepository = furnitureRepository;
        this.purposeRepository = purposeRepository;
    }

    @Override
    public Collection<Estate> findAll() {
        return this.estateRepository.findAll();
    }

    @Override
    public Estate findById(Long id) {
        return this.estateRepository.getById(id);
    }

    @Override
    public void save(Estate estate) {
        Optional<Address> address = this.addressRepository.findByStreet(estate.getAddress().getStreet());

        Optional<Furniture> furniture = this.furnitureRepository.findByName(estate.getFurniture().getName());
        Optional<Type> type = this.typeRepository.findByName(estate.getType().getName());
        Optional<Purpose> purpose = this.purposeRepository.findByName(estate.getPurpose().getName());

        if(address.isPresent()) {
            address.ifPresent(estate::setAddress);
        }
        if(furniture.isPresent()){
            furniture.ifPresent(estate::setFurniture);
        }
        if(type.isPresent()){
            type.ifPresent(estate::setType);
        }
        if(purpose.isPresent()){
            purpose.ifPresent(estate::setPurpose);
        }
        this.estateRepository.save(estate);
    }

    @Override
    public void delete(Estate estate) {
        this.estateRepository.delete(estate);
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
}
