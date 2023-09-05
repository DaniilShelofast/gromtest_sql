package lesson2;

import java.util.Date;

public class Order {
    private long id;
    private String productName;
    private int price;
    private Date dateOrdered;
    private Date dataConfirmed;

    public Order(long id, String productName, int price, Date dateOrdered, Date dataConfirmed) {
        this.id = id;
        this.productName = productName;
        this.price = price;
        this.dateOrdered = dateOrdered;
        this.dataConfirmed = dataConfirmed;
    }

    public long getId() {
        return id;
    }

    public String getProductName() {
        return productName;
    }

    public int getPrice() {
        return price;
    }

    public Date getDateOrdered() {
        return dateOrdered;
    }

    public Date getDataConfirmed() {
        return dataConfirmed;
    }
}
