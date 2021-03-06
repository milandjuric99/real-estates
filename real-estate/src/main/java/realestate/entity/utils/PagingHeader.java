package realestate.entity.utils;

public enum PagingHeader {
    PAGE_SIZE("Page-Size"),
    PAGE_NUMBER("Page-Number"),
    PAGE_OFFSET("Page-Offset"),
    PAGE_TOTAL("Page-Total"),
    COUNT("Count");

    private final String name;

    PagingHeader(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }
}
