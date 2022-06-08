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

    public void setId(Long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getFloor() {
        return floor;
    }

    public void setFloor(int floor) {
        this.floor = floor;
    }

    public int getRoom() {
        return rooms;
    }

    public void setRooms(int room) {
        this.rooms = room;
    }

    public int getNumOfBathroom() {
        return numOfBathroom;
    }

    public void setNumOfBathroom(int numOfBathroom) {
        this.numOfBathroom = numOfBathroom;
    }

    public int getSquareFootage() {
        return squareFootage;
    }

    public void setSquareFootage(int squareFootage) {
        this.squareFootage = squareFootage;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Furniture getFurniture() {
        return furniture;
    }

    public void setFurniture(Furniture furniture) {
        this.furniture = furniture;
    }

    public Type getType() {
        return type;
    }

    public void setType(Type type) {
        this.type = type;
    }

    public Address getAddress() {
        return address;
    }

    public void setAddress(Address address) {
        this.address = address;
    }

    public Collection<Characteristic> getCharacteristics() {
        return characteristics;
    }

    public void setCharacteristics(Collection<Characteristic> characteristics) {
        this.characteristics = characteristics;
    }

    public Collection<EstatePhoto> getPhotos() {
        return photos;
    }

    public void setPhotos(Collection<EstatePhoto> photos) {
        this.photos = photos;
    }

    public Purpose getPurpose() {
        return purpose;
    }

    public void setPurpose(Purpose purpose) {
        this.purpose = purpose;
    }
}
