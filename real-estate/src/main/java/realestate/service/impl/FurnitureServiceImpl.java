package realestate.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import realestate.entity.Furniture;
import realestate.repository.FurnitureRepository;
import realestate.service.FurnitureService;

import java.util.Collection;
@Service
public class FurnitureServiceImpl implements FurnitureService {

    @Autowired
    private FurnitureRepository furnitureRepository;

    @Override
    public Collection<Furniture> findAll() {
        return this.furnitureRepository.findAll();
    }

    @Override
    public Furniture findById(Long id) {
        return this.furnitureRepository.getById(id);
    }
}
