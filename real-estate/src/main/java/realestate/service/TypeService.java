package realestate.service;

import realestate.entity.Type;

import java.util.Collection;

public interface TypeService {

    Collection<Type> findAll();
    Type findById(Long id);
}
