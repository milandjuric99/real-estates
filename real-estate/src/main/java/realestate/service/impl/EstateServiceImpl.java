package realestate.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.http.HttpHeaders;
import org.springframework.stereotype.Service;
import realestate.entity.*;
import realestate.entity.utils.PagingHeader;
import realestate.entity.utils.PagingResponse;
import realestate.repository.*;
import realestate.service.EstateService;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.Collection;
import java.util.List;
import java.util.Objects;
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

    @Override
    public PagingResponse get(Specification<Estate> spec, Pageable pageable) {
        Page<Estate> page = estateRepository.findAll(spec, pageable);
        List<Estate> content = page.getContent();
        return new PagingResponse(page.getTotalElements(), (long) page.getNumber(),
                (long) page.getNumberOfElements(),  pageable.getOffset(), (long) page.getTotalPages(), content);
    }

    @Override
    public PagingResponse get(Specification<Estate> spec, HttpHeaders headers, Sort sort) {
        if (isRequestPaged(headers)) {
            return get(spec, buildPageRequest(headers, sort));
        } else {
            List<Estate> entities = get(spec, sort);
            return new PagingResponse((long) entities.size(), 0L, 0L, 0L, 0L, entities);
        }
    }

    @Override
    public boolean isRequestPaged(HttpHeaders headers) {
        return headers.containsKey(PagingHeader.PAGE_NUMBER.getName()) && headers.containsKey(PagingHeader.PAGE_SIZE.getName());
    }

    @Override
    public List<Estate> get(Specification<Estate> spec, Sort sort) {
        return this.estateRepository.findAll(spec, sort);
    }

    private Pageable buildPageRequest(HttpHeaders headers, Sort sort) {
        int page = Integer.parseInt(Objects.requireNonNull(headers.get(PagingHeader.PAGE_NUMBER.getName())).get(0));
        int size = Integer.parseInt(Objects.requireNonNull(headers.get(PagingHeader.PAGE_SIZE.getName())).get(0));
        return PageRequest.of(page, size, sort);
    }
}
