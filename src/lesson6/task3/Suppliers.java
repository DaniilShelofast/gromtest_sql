package lesson6.task3;

public class Suppliers {

    private long supplierID;
    private String companyName;
    private String contactName;
    private String contactTitle;
    private String address;
    private String city;
    private String region;
    private String postalCode;
    private String country;
    private int phone;
    private String fax;
    private int homePage;

    public Suppliers(long supplierID, String companyName, String contactName, String contactTitle, String address, String city, String region, String postalCode, String country, int phone, String fax, int homePage) {
        this.supplierID = supplierID;
        this.companyName = companyName;
        this.contactName = contactName;
        this.contactTitle = contactTitle;
        this.address = address;
        this.city = city;
        this.region = region;
        this.postalCode = postalCode;
        this.country = country;
        this.phone = phone;
        this.fax = fax;
        this.homePage = homePage;
    }
}
