package realestate.repositoryMock;

import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.repository.query.FluentQuery;
import realestate.entity.Furniture;
import realestate.repository.FurnitureRepository;

import java.util.Arrays;
import java.util.List;
import java.util.Optional;
import java.util.function.Function;

public class FurnitureRepositoryMock implements FurnitureRepository {
    @Override
    public Optional<Furniture> findByName(String name) {
        return Optional.empty();
    }

    @Override
    public List<Furniture> findAll() {
        return Arrays.asList(
                new Furniture()
                        .setId(1L)
                        .setName("Test1"),
                new Furniture()
                        .setId(2L)
                        .setName("Test2")
        );
    }

    @Override
    public List<Furniture> findAll(Sort sort) {
        return null;
    }

    @Override
    public Page<Furniture> findAll(Pageable pageable) {
        return null;
    }

    @Override
    public List<Furniture> findAllById(Iterable<Long> longs) {
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
    public void delete(Furniture entity) {

    }

    @Override
    public void deleteAllById(Iterable<? extends Long> longs) {

    }

    @Override
    public void deleteAll(Iterable<? extends Furniture> entities) {

    }

    @Override
    public void deleteAll() {

    }

    @Override
    public <S extends Furniture> S save(S entity) {
        return null;
    }

    @Override
    public <S extends Furniture> List<S> saveAll(Iterable<S> entities) {
        return null;
    }

    @Override
    public Optional<Furniture> findById(Long aLong) {
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
    public <S extends Furniture> S saveAndFlush(S entity) {
        return null;
    }

    @Override
    public <S extends Furniture> List<S> saveAllAndFlush(Iterable<S> entities) {
        return null;
    }

    @Override
    public void deleteAllInBatch(Iterable<Furniture> entities) {

    }

    @Override
    public void deleteAllByIdInBatch(Iterable<Long> longs) {

    }

    @Override
    public void deleteAllInBatch() {

    }

    @Override
    public Furniture getOne(Long aLong) {
        return null;
    }

    @Override
    public Furniture getById(Long aLong) {
        return new Furniture()
                .setId(2L)
                .setName("Test2");
    }

    @Override
    public <S extends Furniture> Optional<S> findOne(Example<S> example) {
        return Optional.empty();
    }

    @Override
    public <S extends Furniture> List<S> findAll(Example<S> example) {
        return null;
    }

    @Override
    public <S extends Furniture> List<S> findAll(Example<S> example, Sort sort) {
        return null;
    }

    @Override
    public <S extends Furniture> Page<S> findAll(Example<S> example, Pageable pageable) {
        return null;
    }

    @Override
    public <S extends Furniture> long count(Example<S> example) {
        return 0;
    }

    @Override
    public <S extends Furniture> boolean exists(Example<S> example) {
        return false;
    }

    @Override
    public <S extends Furniture, R> R findBy(Example<S> example, Function<FluentQuery.FetchableFluentQuery<S>, R> queryFunction) {
        return null;
    }
}
