package realestate.entity;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Set;

@Entity
@Table(name = "estates")
@JsonIgnoreProperties({"hibernateLazyInitializer"})
public class Estate {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "title")
    private String title;

    @Column(name = "price")
    private double price;

    @Column(name = "floor")
    private int floor;

    @Column(name = "rooms")
    private int rooms;

    @Column(name = "num_of_bathrooms")
    private int numOfBathroom;

    @Column(name = "square_footage")
    private int squareFootage;

    @Column(name = "description", length = 600)
    private String description;

    @Column(name = "creation_date")
    private Date date;

    @OneToOne(cascade = CascadeType.MERGE, fetch = FetchType.EAGER)
    @JoinColumn(name = "furniture_id")
    private Furniture furniture;

    @OneToOne(cascade = CascadeType.MERGE, fetch = FetchType.EAGER)
    @JoinColumn(name = "type_id")
    private Type type;

    @OneToOne(cascade = CascadeType.MERGE, fetch = FetchType.EAGER)
    @JoinColumn(name = "address_id")
    private Address address;

    @JsonIgnoreProperties({"hibernateLazyInitializer"})
    @ManyToMany(cascade = CascadeType.MERGE)
    private Collection<Characteristic> characteristics = new ArrayList<>();

    @OneToMany(cascade = CascadeType.MERGE, orphanRemoval = true, mappedBy = "estate")
    private Collection<EstatePhoto> photos = new ArrayList<>();

    @ManyToOne(cascade = CascadeType.MERGE, fetch = FetchType.EAGER)
    private Purpose purpose;

    public Estate(Long id, String title, double price, int floor, int rooms, int numOfBathroom,
                  int squareFootage, String description, Date date, Furniture furniture,
                  Type type, Address address, Set<Characteristic> characteristics, Collection<EstatePhoto> photos) {
        this.id = id;
        this.title = title;
        this.price = price;
        this.floor = floor;
        this.rooms = rooms;
        this.numOfBathroom = numOfBathroom;
        this.squareFootage = squareFootage;
        this.description = description;
        this.date = date;
        this.furniture = furniture;
        this.type = type;
        this.address = address;
        this.characteristics = characteristics;
        this.photos = photos;
    }

    public Estate() {
    }

    public Long getId() {
        return id;
    }

    public Estate setId(Long id) {
        this.id = id;
        return this;
    }

    public String getTitle() {
        return title;
    }

    public Estate setTitle(String title) {
        this.title = title;
        return this;
    }

    public double getPrice() {
        return price;
    }

    public Estate setPrice(double price) {
        this.price = price;
        return this;
    }

    public int getFloor() {
        return floor;
    }

    public Estate setFloor(int floor) {
        this.floor = floor;
        return this;
    }

    public int getRoom() {
        return rooms;
    }

    public Estate setRooms(int room) {
        this.rooms = room;
        return this;
    }

    public int getNumOfBathroom() {
        return numOfBathroom;
    }

    public Estate setNumOfBathroom(int numOfBathroom) {
        this.numOfBathroom = numOfBathroom;
        return this;
    }

    public int getSquareFootage() {
        return squareFootage;
    }

    public Estate setSquareFootage(int squareFootage) {
        this.squareFootage = squareFootage;
        return this;
    }

    public String getDescription() {
        return description;
    }

    public Estate setDescription(String description) {
        this.description = description;
        return this;
    }

    public Date getDate() {
        return date;
    }

    public Estate setDate(Date date) {
        this.date = date;
        return this;
    }

    public Furniture getFurniture() {
        return furniture;
    }

    public Estate setFurniture(Furniture furniture) {
        this.furniture = furniture;
        return this;
    }

    public Type getType() {
        return type;
    }

    public Estate setType(Type type) {
        this.type = type;
        return this;
    }

    public Address getAddress() {
        return address;
    }

    public Estate setAddress(Address address) {
        this.address = address;
        return this;
    }

    public Collection<Characteristic> getCharacteristics() {
        return characteristics;
    }

    public Estate setCharacteristics(Collection<Characteristic> characteristics) {
        this.characteristics = characteristics;
        return this;
    }

    public Collection<EstatePhoto> getPhotos() {
        return photos;
    }

    public Estate setPhotos(Collection<EstatePhoto> photos) {
        this.photos = photos;
        return this;
    }

    public Purpose getPurpose() {
        return purpose;
    }

    public Estate setPurpose(Purpose purpose) {
        this.purpose = purpose;
        return this;
    }
}
