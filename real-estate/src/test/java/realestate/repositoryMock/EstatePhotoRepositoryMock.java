package realestate.repositoryMock;

import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.repository.query.FluentQuery;
import realestate.entity.EstatePhoto;
import realestate.repository.EstatePhotoRepository;

import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Optional;
import java.util.function.Function;

public class EstatePhotoRepositoryMock implements EstatePhotoRepository {

    static byte[] imageBytes = {1, 2, 3, 4, 5, 6};

    @Override
    public Collection<EstatePhoto> findAllById(Long id) {
        return null;
    }

    @Override
    public List<EstatePhoto> findAll() {
        return Arrays.asList(
                new EstatePhoto()
                        .setId(1L)
                        .setPhoto(imageBytes),
                new EstatePhoto()
                        .setId(2L)
                        .setPhoto(imageBytes)
        );
    }

    @Override
    public List<EstatePhoto> findAll(Sort sort) {
        return null;
    }

    @Override
    public Page<EstatePhoto> findAll(Pageable pageable) {
        return null;
    }

    @Override
    public List<EstatePhoto> findAllById(Iterable<Long> longs) {
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
    public void delete(EstatePhoto entity) {

    }

    @Override
    public void deleteAllById(Iterable<? extends Long> longs) {

    }

    @Override
    public void deleteAll(Iterable<? extends EstatePhoto> entities) {

    }

    @Override
    public void deleteAll() {

    }

    @Override
    public <S extends EstatePhoto> S save(S entity) {
        return null;
    }

    @Override
    public <S extends EstatePhoto> List<S> saveAll(Iterable<S> entities) {
        return null;
    }

    @Override
    public Optional<EstatePhoto> findById(Long aLong) {
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
    public <S extends EstatePhoto> S saveAndFlush(S entity) {
        return null;
    }

    @Override
    public <S extends EstatePhoto> List<S> saveAllAndFlush(Iterable<S> entities) {
        return null;
    }

    @Override
    public void deleteAllInBatch(Iterable<EstatePhoto> entities) {

    }

    @Override
    public void deleteAllByIdInBatch(Iterable<Long> longs) {

    }

    @Override
    public void deleteAllInBatch() {

    }

    @Override
    public EstatePhoto getOne(Long aLong) {
        return null;
    }

    @Override
    public EstatePhoto getById(Long aLong) {
        return null;
    }

    @Override
    public <S extends EstatePhoto> Optional<S> findOne(Example<S> example) {
        return Optional.empty();
    }

    @Override
    public <S extends EstatePhoto> List<S> findAll(Example<S> example) {
        return null;
    }

    @Override
    public <S extends EstatePhoto> List<S> findAll(Example<S> example, Sort sort) {
        return null;
    }

    @Override
    public <S extends EstatePhoto> Page<S> findAll(Example<S> example, Pageable pageable) {
        return null;
    }

    @Override
    public <S extends EstatePhoto> long count(Example<S> example) {
        return 0;
    }

    @Override
    public <S extends EstatePhoto> boolean exists(Example<S> example) {
        return false;
    }

    @Override
    public <S extends EstatePhoto, R> R findBy(Example<S> example, Function<FluentQuery.FetchableFluentQuery<S>, R> queryFunction) {
        return null;
    }
}
