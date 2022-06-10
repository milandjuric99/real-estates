package realestate.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;

@Entity
@Table(name = "estate_photos")
public class EstatePhoto {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Lob
    @Column(name = "photo")
    private byte[] photo;

    @JsonIgnore
    @ManyToOne(fetch=FetchType.LAZY, cascade = CascadeType.MERGE)
    @JoinColumn(name="estate_id", nullable=false)
    private Estate estate;

    public EstatePhoto(Long id, byte[] photo, Estate estate) {
        this.id = id;
        this.photo = photo;
        this.estate = estate;
    }

    public EstatePhoto() {
    }

    public Long getId() {
        return id;
    }

    public EstatePhoto setId(Long id) {
        this.id = id;
        return this;
    }

    public byte[] getPhoto() {
        return photo;
    }

    public EstatePhoto setPhoto(byte[] photo) {
        this.photo = photo;
        return this;
    }

    public Estate getEstate() {
        return estate;
    }

    public EstatePhoto setEstate(Estate estate) {
        this.estate = estate;
        return this;
    }
}
