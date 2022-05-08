package realestate.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import realestate.entity.Purpose;

@Repository
public interface PurposeRepository extends JpaRepository<Purpose, Long> {
}
