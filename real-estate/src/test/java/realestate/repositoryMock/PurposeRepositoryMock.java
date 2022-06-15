package realestate.repositoryMock;

import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.repository.query.FluentQuery;
import realestate.entity.Purpose;
import realestate.repository.PurposeRepository;

import java.util.Arrays;
import java.util.List;
import java.util.Optional;
import java.util.function.Function;

public class PurposeRepositoryMock implements PurposeRepository{
    @Override
    public Optional<Purpose> findByName(String name) {
        return Optional.empty();
    }

    @Override
    public List<Purpose> findAll() {
        return Arrays.asList(
                new Purpose()
                        .setId(1L)
                        .setName("Test1"),
                new Purpose()
                        .setId(2L)
                        .setName("Test2")
        );
    }

    @Override
    public List<Purpose> findAll(Sort sort) {
        return null;
    }

    @Override
    public Page<Purpose> findAll(Pageable pageable) {
        return null;
    }

    @Override
    public List<Purpose> findAllById(Iterable<Long> longs) {
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
    public void delete(Purpose entity) {

    }

    @Override
    public void deleteAllById(Iterable<? extends Long> longs) {

    }

    @Override
    public void deleteAll(Iterable<? extends Purpose> entities) {

    }

    @Override
    public void deleteAll() {

    }

    @Override
    public <S extends Purpose> S save(S entity) {
        return null;
    }

    @Override
    public <S extends Purpose> List<S> saveAll(Iterable<S> entities) {
        return null;
    }

    @Override
    public Optional<Purpose> findById(Long aLong) {
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
    public <S extends Purpose> S saveAndFlush(S entity) {
        return null;
    }

    @Override
    public <S extends Purpose> List<S> saveAllAndFlush(Iterable<S> entities) {
        return null;
    }

    @Override
    public void deleteAllInBatch(Iterable<Purpose> entities) {

    }

    @Override
    public void deleteAllByIdInBatch(Iterable<Long> longs) {

    }

    @Override
    public void deleteAllInBatch() {

    }

    @Override
    public Purpose getOne(Long aLong) {
        return null;
    }

    @Override
    public Purpose getById(Long aLong) {
        return new Purpose()
                .setId(2L)
                .setName("Test2");
    }

    @Override
    public <S extends Purpose> Optional<S> findOne(Example<S> example) {
        return Optional.empty();
    }

    @Override
    public <S extends Purpose> List<S> findAll(Example<S> example) {
        return null;
    }

    @Override
    public <S extends Purpose> List<S> findAll(Example<S> example, Sort sort) {
        return null;
    }

    @Override
    public <S extends Purpose> Page<S> findAll(Example<S> example, Pageable pageable) {
        return null;
    }

    @Override
    public <S extends Purpose> long count(Example<S> example) {
        return 0;
    }

    @Override
    public <S extends Purpose> boolean exists(Example<S> example) {
        return false;
    }

    @Override
    public <S extends Purpose, R> R findBy(Example<S> example, Function<FluentQuery.FetchableFluentQuery<S>, R> queryFunction) {
        return null;
    }
}
