package realestate.service;

import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.http.HttpHeaders;
import realestate.entity.Estate;
import realestate.entity.utils.PagingResponse;

import java.util.Collection;
import java.util.List;

public interface EstateService {

    Collection<Estate> findAll();
    Estate findById(Long id);
    void save(Estate estate);
    void delete(Estate estate);
    PagingResponse get(Specification<Estate> spec, Pageable pageable);
    PagingResponse get(Specification<Estate> spec, HttpHeaders headers, Sort sort);
    List<Estate> get(Specification<Estate> spec, Sort sort);
    boolean isRequestPaged(HttpHeaders headers);
}
