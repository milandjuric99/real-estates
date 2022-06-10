package realestate.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;

@Entity
@Table(name = "address")
public class Address {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "city")
    private String city;

    @Column(name = "municipality")
    private String municipality;

    @Column(name = "street")
    private String street;

    @Column(name = "street_number")
    private int streetNumber;

    @JsonIgnore
    @OneToOne(mappedBy = "address")
    private Estate estate;

    public Address(Long id, String city, String municipality, String street, int streetNumber, Estate estate) {
        this.id = id;
        this.city = city;
        this.municipality = municipality;
        this.street = street;
        this.streetNumber = streetNumber;
        this.estate = estate;
    }

    public Address() {
    }

    public Long getId() {
        return id;
    }

    public Address setId(Long id) {
        this.id = id;
        return this;
    }

    public String getCity() {
        return city;
    }

    public Address setCity(String city) {
        this.city = city;
        return this;
    }

    public String getMunicipality() {
        return municipality;
    }

    public Address setMunicipality(String municipality) {
        this.municipality = municipality;
        return this;
    }

    public String getStreet() {
        return street;
    }

    public Address setStreet(String street) {
        this.street = street;
        return this;
    }

    public int getStreetNumber() {
        return streetNumber;
    }

    public Address setStreetNumber(int streetNumber) {
        this.streetNumber = streetNumber;
        return this;
    }

    public Estate getEstate() {
        return estate;
    }

    public Address setEstate(Estate estate) {
        this.estate = estate;
        return this;
    }
}
