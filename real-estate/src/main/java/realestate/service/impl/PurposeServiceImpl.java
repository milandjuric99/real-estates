package realestate.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import realestate.entity.Purpose;
import realestate.repository.PurposeRepository;
import realestate.service.PurposeService;

import java.util.Collection;

@Service
public class PurposeServiceImpl implements PurposeService {

    @Autowired
    private PurposeRepository purposeRepository;

    @Override
    public Collection<Purpose> findAll() {
        return this.purposeRepository.findAll();
    }

    @Override
    public Purpose findById(Long id) {
        return this.purposeRepository.getById(id);
    }
}
