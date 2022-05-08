package realestate.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import realestate.entity.Furniture;

import java.util.Optional;

@Repository
public interface FurnitureRepository extends JpaRepository<Furniture, Long> {

    Optional<Furniture> findByName(String name);
}
