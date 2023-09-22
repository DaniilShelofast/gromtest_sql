package lesson6.task3;

public class OrderDetails {

    private Orders orders;
    private Products products;
    private int unitPrice;
    private int quantity;
    private double discount;

    public OrderDetails(Orders orders, Products products, int unitPrice, int quantity, double discount) {
        this.orders = orders;
        this.products = products;
        this.unitPrice = unitPrice;
        this.quantity = quantity;
        this.discount = discount;
    }
}
