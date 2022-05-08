package realestate.service;

import realestate.entity.Purpose;

import java.util.Collection;

public interface PurposeService {

    Collection<Purpose> findAll();
    Purpose findById(Long id);
}
