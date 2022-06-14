package realestate.repositoryMock;

import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.repository.query.FluentQuery;
import realestate.entity.Address;
import realestate.repository.AddressRepository;

import java.util.Arrays;
import java.util.List;
import java.util.Optional;
import java.util.function.Function;

public class AddressRepositoryMock implements AddressRepository {
    @Override
    public Optional<Address> findByStreet(String street) {
        return Optional.empty();
    }

    @Override
    public List<Address> findAll() {
        return Arrays.asList(
                new Address()
                        .setId(1L)
                        .setCity("Beograd")
                        .setMunicipality("Zemun")
                        .setStreet("Ohridska")
                        .setStreetNumber(7),
                new Address()
                        .setId(2L)
                        .setCity("Beograd")
                        .setMunicipality("Zemun")
                        .setStreet("Prvomajska")
                        .setStreetNumber(23)
        );
    }

    @Override
    public List<Address> findAll(Sort sort) {
        return null;
    }

    @Override
    public Page<Address> findAll(Pageable pageable) {
        return null;
    }

    @Override
    public List<Address> findAllById(Iterable<Long> longs) {
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
    public void delete(Address entity) {

    }

    @Override
    public void deleteAllById(Iterable<? extends Long> longs) {

    }

    @Override
    public void deleteAll(Iterable<? extends Address> entities) {

    }

    @Override
    public void deleteAll() {

    }

    @Override
    public <S extends Address> S save(S entity) {
        return null;
    }

    @Override
    public <S extends Address> List<S> saveAll(Iterable<S> entities) {
        return null;
    }

    @Override
    public Optional<Address> findById(Long aLong) {
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
    public <S extends Address> S saveAndFlush(S entity) {
        return null;
    }

    @Override
    public <S extends Address> List<S> saveAllAndFlush(Iterable<S> entities) {
        return null;
    }

    @Override
    public void deleteAllInBatch(Iterable<Address> entities) {

    }

    @Override
    public void deleteAllByIdInBatch(Iterable<Long> longs) {

    }

    @Override
    public void deleteAllInBatch() {

    }

    @Override
    public Address getOne(Long aLong) {
        return null;
    }

    @Override
    public Address getById(Long aLong) {
        return new Address()
                .setId(1L)
                .setCity("Beograd")
                .setMunicipality("Zemun")
                .setStreet("Ohridska")
                .setStreetNumber(7);
    }

    @Override
    public <S extends Address> Optional<S> findOne(Example<S> example) {
        return Optional.empty();
    }

    @Override
    public <S extends Address> List<S> findAll(Example<S> example) {
        return null;
    }

    @Override
    public <S extends Address> List<S> findAll(Example<S> example, Sort sort) {
        return null;
    }

    @Override
    public <S extends Address> Page<S> findAll(Example<S> example, Pageable pageable) {
        return null;
    }

    @Override
    public <S extends Address> long count(Example<S> example) {
        return 0;
    }

    @Override
    public <S extends Address> boolean exists(Example<S> example) {
        return false;
    }

    @Override
    public <S extends Address, R> R findBy(Example<S> example, Function<FluentQuery.FetchableFluentQuery<S>, R> queryFunction) {
        return null;
    }
}
