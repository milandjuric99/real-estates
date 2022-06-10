package realestate.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;

@Entity
@Table(name = "furniture")
public class Furniture {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "name")
    private String name;

    @JsonIgnore
    @OneToOne(mappedBy = "furniture")
    private Estate estate;

    public Furniture(Long id, String name, Estate estate) {
        this.id = id;
        this.name = name;
        this.estate = estate;
    }

    public Furniture() {
    }

    public Long getId() {
        return id;
    }

    public Furniture setId(Long id) {
        this.id = id;
        return this;
    }

    public String getName() {
        return name;
    }

    public Furniture setName(String name) {
        this.name = name;
        return this;
    }

    public Estate getEstate() {
        return estate;
    }

    public Furniture setEstate(Estate estate) {
        this.estate = estate;
        return this;
    }
}
