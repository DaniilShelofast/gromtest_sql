package lesson6.task3;

public class Products {

    private long productID;
    private String productName;
    private Suppliers suppliers;
    private Categories categories;
    private int quantityPerUnit;
    private int unitPrice;
    private int unitsInStock;
    private int unitsOnOrder;
    private int reorderLevel;
    private double discontinued;

    public Products(long productID, String productName, Suppliers suppliers, Categories categories, int quantityPerUnit, int unitPrice, int unitsInStock, int unitsOnOrder, int reorderLevel, double discontinued) {
        this.productID = productID;
        this.productName = productName;
        this.suppliers = suppliers;
        this.categories = categories;
        this.quantityPerUnit = quantityPerUnit;
        this.unitPrice = unitPrice;
        this.unitsInStock = unitsInStock;
        this.unitsOnOrder = unitsOnOrder;
        this.reorderLevel = reorderLevel;
        this.discontinued = discontinued;
    }
}
