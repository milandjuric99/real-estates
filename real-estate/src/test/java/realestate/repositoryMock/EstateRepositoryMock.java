package realestate.repositoryMock;

import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.data.repository.query.FluentQuery;
import realestate.entity.Estate;
import realestate.repository.EstateRepository;
import realestate.supplier.*;

import java.util.Arrays;
import java.util.List;
import java.util.Optional;
import java.util.function.Function;

public class EstateRepositoryMock implements EstateRepository {
    @Override
    public List<Estate> findAll() {
        return Arrays.asList(
                new Estate()
                        .setId(1L)
                        .setAddress(AddressSupplier.getAddress())
                        .setFurniture(FurnitureSupplier.getFurniture())
                        .setPurpose(PurposeSupplier.getPurpose())
                        .setDescription("testtest")
                        .setType(TypeSupplier.getType())
                        .setCharacteristics(CharacteristicSupplier.getCharacteristics())
                        .setRooms(3)
                        .setPrice(300.0)
                        .setNumOfBathroom(1)
                        .setFloor(3)
                        .setPhotos(EstatePhotoSupplier.getPhotos())
                        .setSquareFootage(54)
                        .setTitle("TEST400"),
                new Estate()
                        .setId(2L)
                        .setAddress(AddressSupplier.getAddress())
                        .setFurniture(FurnitureSupplier.getFurniture())
                        .setPurpose(PurposeSupplier.getPurpose())
                        .setDescription("testtest")
                        .setType(TypeSupplier.getType())
                        .setCharacteristics(CharacteristicSupplier.getCharacteristics())
                        .setRooms(4)
                        .setPrice(500.0)
                        .setNumOfBathroom(2)
                        .setFloor(5)
                        .setPhotos(EstatePhotoSupplier.getPhotos())
                        .setSquareFootage(64)
                        .setTitle("TEST200")
        );
    }

    @Override
    public List<Estate> findAll(Sort sort) {
        return null;
    }

    @Override
    public Page<Estate> findAll(Pageable pageable) {
        return null;
    }

    @Override
    public List<Estate> findAllById(Iterable<Long> longs) {
        return null;
    }

    @Override
    public long count() {
        return 0;
    }

    @Override
    public void deleteById(Long aLong) {

    }

    @Override
    public void delete(Estate entity) {

    }

    @Override
    public void deleteAllById(Iterable<? extends Long> longs) {

    }

    @Override
    public void deleteAll(Iterable<? extends Estate> entities) {

    }

    @Override
    public void deleteAll() {

    }

    @Override
    public <S extends Estate> S save(S entity) {
        return null;
    }

    @Override
    public <S extends Estate> List<S> saveAll(Iterable<S> entities) {
        return null;
    }

    @Override
    public Optional<Estate> findById(Long aLong) {
        return Optional.empty();
    }

    @Override
    public boolean existsById(Long aLong) {
        return false;
    }

    @Override
    public void flush() {

    }

    @Override
    public <S extends Estate> S saveAndFlush(S entity) {
        return null;
    }

    @Override
    public <S extends Estate> List<S> saveAllAndFlush(Iterable<S> entities) {
        return null;
    }

    @Override
    public void deleteAllInBatch(Iterable<Estate> entities) {

    }

    @Override
    public void deleteAllByIdInBatch(Iterable<Long> longs) {

    }

    @Override
    public void deleteAllInBatch() {

    }

    @Override
    public Estate getOne(Long aLong) {
        return null;
    }

    @Override
    public Estate getById(Long aLong) {
        return new Estate()
                .setId(1L)
                .setAddress(AddressSupplier.getAddress())
                .setFurniture(FurnitureSupplier.getFurniture())
                .setPurpose(PurposeSupplier.getPurpose())
                .setDescription("testtest")
                .setType(TypeSupplier.getType())
                .setCharacteristics(CharacteristicSupplier.getCharacteristics())
                .setRooms(3)
                .setPrice(300.0)
                .setNumOfBathroom(1)
                .setFloor(3)
                .setPhotos(EstatePhotoSupplier.getPhotos())
                .setSquareFootage(54)
                .setTitle("TEST400");
    }

    @Override
    public <S extends Estate> Optional<S> findOne(Example<S> example) {
        return Optional.empty();
    }

    @Override
    public <S extends Estate> List<S> findAll(Example<S> example) {
        return null;
    }

    @Override
    public <S extends Estate> List<S> findAll(Example<S> example, Sort sort) {
        return null;
    }

    @Override
    public <S extends Estate> Page<S> findAll(Example<S> example, Pageable pageable) {
        return null;
    }

    @Override
    public <S extends Estate> long count(Example<S> example) {
        return 0;
    }

    @Override
    public <S extends Estate> boolean exists(Example<S> example) {
        return false;
    }

    @Override
    public <S extends Estate, R> R findBy(Example<S> example, Function<FluentQuery.FetchableFluentQuery<S>, R> queryFunction) {
        return null;
    }

    @Override
    public Optional<Estate> findOne(Specification<Estate> spec) {
        return Optional.empty();
    }

    @Override
    public List<Estate> findAll(Specification<Estate> spec) {
        return null;
    }

    @Override
    public Page<Estate> findAll(Specification<Estate> spec, Pageable pageable) {
        return null;
    }

    @Override
    public List<Estate> findAll(Specification<Estate> spec, Sort sort) {
        return null;
    }

    @Override
    public long count(Specification<Estate> spec) {
        return 0;
    }
}
