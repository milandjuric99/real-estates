package realestate.service;

import realestate.entity.Estate;

import java.util.Collection;

public interface EstateService {

    Collection<Estate> findAll();
    Estate findById(Long id);
    void save(Estate estate);
    void delete(Estate estate);
}
