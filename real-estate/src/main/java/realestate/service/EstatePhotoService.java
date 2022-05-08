package realestate.service;

import realestate.entity.EstatePhoto;

import java.util.Collection;
import java.util.Set;

public interface EstatePhotoService {

    Collection<EstatePhoto> findAll();
    EstatePhoto findById(Long id);
    void save(EstatePhoto estatePhoto);
    void saveAll(Collection<EstatePhoto> estatePhotos);
    void delete(EstatePhoto estatePhoto);
    Collection<EstatePhoto> findAllById(Long id);
}
