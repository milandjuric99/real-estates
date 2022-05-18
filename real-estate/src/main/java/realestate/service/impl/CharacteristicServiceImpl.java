package realestate.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import realestate.entity.Characteristic;
import realestate.repository.CharacteristicRepository;
import realestate.service.CharacteristicService;

import java.util.Collection;
import java.util.List;

@Service
public class CharacteristicServiceImpl implements CharacteristicService {

    @Autowired
    private CharacteristicRepository characteristicRepository;

    @Override
    public Collection<Characteristic> findAll() {
        return this.characteristicRepository.findAll();
    }

    @Override
    public Characteristic findById(Long id) {
        return this.characteristicRepository.getById(id);
    }

    @Override
    public Collection<Characteristic> findAllById(Long id) {
        return this.characteristicRepository.findAllById(id);
    }

    @Override
    public void save(Characteristic characteristic) {
        this.characteristicRepository.save(characteristic);
    }

}
