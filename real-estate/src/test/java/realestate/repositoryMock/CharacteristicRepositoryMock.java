package realestate.repositoryMock;

import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.repository.query.FluentQuery;
import realestate.entity.Characteristic;
import realestate.repository.CharacteristicRepository;

import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Optional;
import java.util.function.Function;

public class CharacteristicRepositoryMock implements CharacteristicRepository {
    @Override
    public Optional<Characteristic> findByName(String name) {
        return Optional.empty();
    }

    @Override
    public Collection<Characteristic> findAllById(Long id) {
        return Arrays.asList(
                new Characteristic()
                        .setId(1L)
                        .setName("Test2"),
                new Characteristic()
                        .setId(2L)
                        .setName("Test2")
        );
    }

    @Override
    public List<Characteristic> findAll() {
        return null;
    }

    @Override
    public List<Characteristic> findAll(Sort sort) {
        return null;
    }

    @Override
    public Page<Characteristic> findAll(Pageable pageable) {
        return null;
    }

    @Override
    public List<Characteristic> findAllById(Iterable<Long> longs) {
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
    public void delete(Characteristic entity) {

    }

    @Override
    public void deleteAllById(Iterable<? extends Long> longs) {

    }

    @Override
    public void deleteAll(Iterable<? extends Characteristic> entities) {

    }

    @Override
    public void deleteAll() {

    }

    @Override
    public <S extends Characteristic> S save(S entity) {
        return null;
    }

    @Override
    public <S extends Characteristic> List<S> saveAll(Iterable<S> entities) {
        return null;
    }

    @Override
    public Optional<Characteristic> findById(Long aLong) {
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
    public <S extends Characteristic> S saveAndFlush(S entity) {
        return null;
    }

    @Override
    public <S extends Characteristic> List<S> saveAllAndFlush(Iterable<S> entities) {
        return null;
    }

    @Override
    public void deleteAllInBatch(Iterable<Characteristic> entities) {

    }

    @Override
    public void deleteAllByIdInBatch(Iterable<Long> longs) {

    }

    @Override
    public void deleteAllInBatch() {

    }

    @Override
    public Characteristic getOne(Long aLong) {
        return null;
    }

    @Override
    public Characteristic getById(Long aLong) {
        return new Characteristic()
                .setId(1L)
                .setName("Test");
    }

    @Override
    public <S extends Characteristic> Optional<S> findOne(Example<S> example) {
        return Optional.empty();
    }

    @Override
    public <S extends Characteristic> List<S> findAll(Example<S> example) {
        return null;
    }

    @Override
    public <S extends Characteristic> List<S> findAll(Example<S> example, Sort sort) {
        return null;
    }

    @Override
    public <S extends Characteristic> Page<S> findAll(Example<S> example, Pageable pageable) {
        return null;
    }

    @Override
    public <S extends Characteristic> long count(Example<S> example) {
        return 0;
    }

    @Override
    public <S extends Characteristic> boolean exists(Example<S> example) {
        return false;
    }

    @Override
    public <S extends Characteristic, R> R findBy(Example<S> example, Function<FluentQuery.FetchableFluentQuery<S>, R> queryFunction) {
        return null;
    }
}
