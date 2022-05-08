package realestate.service;

import realestate.entity.Furniture;

import java.util.Collection;

public interface FurnitureService {

    Collection<Furniture> findAll();
    Furniture findById(Long id);
}
