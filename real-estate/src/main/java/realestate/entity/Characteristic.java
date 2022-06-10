package realestate.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;

@Entity
@Table(name = "characteristics")
public class Characteristic {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "name")
    private String name;


    public Characteristic(Long id, String name) {
        this.id = id;
        this.name = name;
    }

    public Characteristic() {
    }

    public Long getId() {
        return id;
    }

    public Characteristic setId(Long id) {
        this.id = id;
        return this;
    }

    public String getName() {
        return name;
    }

    public Characteristic setName(String name) {
        this.name = name;
        return this;
    }
}
