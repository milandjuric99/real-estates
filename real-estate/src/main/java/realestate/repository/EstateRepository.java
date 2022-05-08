package realestate.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import realestate.entity.Estate;

@Repository
public interface EstateRepository extends JpaRepository<Estate, Long> {


}
