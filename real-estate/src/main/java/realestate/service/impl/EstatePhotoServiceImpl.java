package realestate.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import realestate.entity.EstatePhoto;
import realestate.repository.EstatePhotoRepository;
import realestate.service.EstatePhotoService;

import java.util.Collection;

@Service
public class EstatePhotoServiceImpl implements EstatePhotoService {

    @Autowired
    private EstatePhotoRepository estatePhotoRepository;

    @Override
    public Collection<EstatePhoto> findAll() {
        return this.estatePhotoRepository.findAll();
    }

    @Override
    public EstatePhoto findById(Long id) {
        return this.estatePhotoRepository.getById(id);
    }

    @Override
    public void save(EstatePhoto estatePhoto) {
        this.estatePhotoRepository.save(estatePhoto);
    }

    @Override
    public void saveAll(Collection<EstatePhoto> estatePhotos) {
        this.estatePhotoRepository.saveAll(estatePhotos);
    }

    @Override
    public void delete(EstatePhoto estatePhoto) {
        this.estatePhotoRepository.delete(estatePhoto);
    }

    @Override
    public Collection<EstatePhoto> findAllById(Long id) {
        return this.estatePhotoRepository.findAllById(id);
    }
}
