package realestate.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import realestate.entity.Type;
import realestate.repository.TypeRepository;
import realestate.service.TypeService;

import java.util.Collection;

@Service
public class TypeServiceImpl implements TypeService {

    @Autowired
    private TypeRepository typeRepository;

    @Override
    public Collection<Type> findAll() {
        return this.typeRepository.findAll();
    }

    @Override
    public Type findById(Long id) {
        return this.typeRepository.getById(id);
    }
}
