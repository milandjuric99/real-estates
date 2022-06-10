package realestate.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;
import java.util.Set;

@Entity
@Table(name = "purpose")
public class Purpose {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "name")
    private String name;

    @JsonIgnore
    @OneToMany(mappedBy = "purpose")
    private Set<Estate> estates;

    public Purpose(Long id, String name, Set<Estate> estates) {
        this.id = id;
        this.name = name;
        this.estates = estates;
    }

    public Purpose() {
    }

    public Long getId() {
        return id;
    }

    public Purpose setId(Long id) {
        this.id = id;
        return this;
    }

    public String getName() {
        return name;
    }

    public Purpose setName(String name) {
        this.name = name;
        return this;
    }

    public Set<Estate> getEstates() {
        return estates;
    }

    public Purpose setEstates(Set<Estate> estates) {
        this.estates = estates;
        return this;
    }
}
