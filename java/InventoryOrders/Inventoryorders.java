package InventoryOrders;

public class Inventoryorders {

	
	 private int id;
	 private int quantity;
	 private double price;
	 private int itemID;
	 private int itemname;
	
	public Inventoryorders(int id, int quantity, double price, int itemID, int itemname) {
		super();
		this.id = id;
		this.quantity = quantity;
		this.price = price;
		this.itemID = itemID;
		this.itemname = itemname;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public int getItemID() {
		return itemID;
	}
	public void setItemID(int itemID) {
		this.itemID = itemID;
	}
	public int getItemname() {
		return itemname;
	}
	public void setItemname(int itemname) {
		this.itemname = itemname;
	}
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
}
