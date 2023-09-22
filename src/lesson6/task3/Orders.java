package lesson6.task3;

import java.util.Date;

public class Orders {

    private long orderID;
    private Employees employees;
    private Customers customers;
    private Date orderDate;
    private Date requiredDate;
    private Date shippedDate;
    private Shippers shippers;
    private double freight;
    private String shipName;
    private String shipAddress;
    private String shipCity;
    private String shipRegion;
    private String shipPostalCode;
    private String shipCountry;

    public Orders(long orderID, Employees employees, Customers customers, Date orderDate, Date requiredDate, Date shippedDate, Shippers shippers, double freight, String shipName, String shipAddress, String shipCity, String shipRegion, String shipPostalCode, String shipCountry) {
        this.orderID = orderID;
        this.employees = employees;
        this.customers = customers;
        this.orderDate = orderDate;
        this.requiredDate = requiredDate;
        this.shippedDate = shippedDate;
        this.shippers = shippers;
        this.freight = freight;
        this.shipName = shipName;
        this.shipAddress = shipAddress;
        this.shipCity = shipCity;
        this.shipRegion = shipRegion;
        this.shipPostalCode = shipPostalCode;
        this.shipCountry = shipCountry;
    }
}
