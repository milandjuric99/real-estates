package realestate.service;

import realestate.entity.Characteristic;

import java.util.Collection;
import java.util.List;

public interface CharacteristicService {

    Collection<Characteristic> findAll();
    Characteristic findById(Long id);
    Collection<Characteristic> findAllById(Long id);
    void save(Characteristic characteristic);
}
