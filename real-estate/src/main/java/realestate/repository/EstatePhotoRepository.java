package realestate.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import realestate.entity.EstatePhoto;

import java.util.Collection;
import java.util.Optional;

@Repository
public interface EstatePhotoRepository extends JpaRepository<EstatePhoto, Long> {

    Collection<EstatePhoto> findAllById(Long id);
}
