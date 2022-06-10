package realestate.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;

@Entity
@Table(name = "type")
public class Type {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "name")
    private String name;

    @JsonIgnore
    @OneToOne(mappedBy = "type")
    private Estate estate;

    public Type(Long id, String name, Estate estate) {
        this.id = id;
        this.name = name;
        this.estate = estate;
    }

    public Type() {
    }

    public Long getId() {
        return id;
    }

    public Type setId(Long id) {
        this.id = id;
        return this;
    }

    public String getName() {
        return name;
    }

    public Type setName(String name) {
        this.name = name;
        return this;
    }

    public Estate getEstate() {
        return estate;
    }

    public Type setEstate(Estate estate) {
        this.estate = estate;
        return this;
    }
}
