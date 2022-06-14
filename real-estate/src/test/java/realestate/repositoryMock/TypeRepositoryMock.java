package realestate.repositoryMock;

import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.repository.query.FluentQuery;
import realestate.entity.Type;
import realestate.repository.TypeRepository;

import java.util.Arrays;
import java.util.List;
import java.util.Optional;
import java.util.function.Function;

public class TypeRepositoryMock implements TypeRepository {
    @Override
    public Optional<Type> findByName(String name) {
        return Optional.empty();
    }

    @Override
    public List<Type> findAll() {
        return Arrays.asList(
                new Type()
                        .setId(1L)
                        .setName("Test1"),

                new Type()
                        .setId(2L)
                        .setName("Test2")
        );
    }

    @Override
    public List<Type> findAll(Sort sort) {
        return null;
    }

    @Override
    public Page<Type> findAll(Pageable pageable) {
        return null;
    }

    @Override
    public List<Type> findAllById(Iterable<Long> longs) {
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
    public void delete(Type entity) {

    }

    @Override
    public void deleteAllById(Iterable<? extends Long> longs) {

    }

    @Override
    public void deleteAll(Iterable<? extends Type> entities) {

    }

    @Override
    public void deleteAll() {

    }

    @Override
    public <S extends Type> S save(S entity) {
        return null;
    }

    @Override
    public <S extends Type> List<S> saveAll(Iterable<S> entities) {
        return null;
    }

    @Override
    public Optional<Type> findById(Long aLong) {
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
    public <S extends Type> S saveAndFlush(S entity) {
        return null;
    }

    @Override
    public <S extends Type> List<S> saveAllAndFlush(Iterable<S> entities) {
        return null;
    }

    @Override
    public void deleteAllInBatch(Iterable<Type> entities) {

    }

    @Override
    public void deleteAllByIdInBatch(Iterable<Long> longs) {

    }

    @Override
    public void deleteAllInBatch() {

    }

    @Override
    public Type getOne(Long aLong) {
        return null;
    }

    @Override
    public Type getById(Long aLong) {
        return new Type()
                .setId(1L)
                .setName("Test1");
    }

    @Override
    public <S extends Type> Optional<S> findOne(Example<S> example) {
        return Optional.empty();
    }

    @Override
    public <S extends Type> List<S> findAll(Example<S> example) {
        return null;
    }

    @Override
    public <S extends Type> List<S> findAll(Example<S> example, Sort sort) {
        return null;
    }

    @Override
    public <S extends Type> Page<S> findAll(Example<S> example, Pageable pageable) {
        return null;
    }

    @Override
    public <S extends Type> long count(Example<S> example) {
        return 0;
    }

    @Override
    public <S extends Type> boolean exists(Example<S> example) {
        return false;
    }

    @Override
    public <S extends Type, R> R findBy(Example<S> example, Function<FluentQuery.FetchableFluentQuery<S>, R> queryFunction) {
        return null;
    }
}
