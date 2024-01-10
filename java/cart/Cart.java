package cart;

public class Cart {

	
	private int cartID;
	
	private int cusID;
	private int itemid;
	private double price;
	
	
	
	
	




	public Cart(int cartID,  int cusID,int itemid,double price) {
		super();
		this.cartID = cartID;
		
		this.cusID = cusID;
		this.itemid=itemid;
		this.price=price;
	}
	
	
	
	public Cart() {
		this.cartID=0;
		this.cusID=0;
	
		this.itemid=0;
		this.price=0;
	}



	public int getItemid() {
		return itemid;
	}



	public void setItemid(int itemid) {
		this.itemid = itemid;
	}



	public double getPrice() {
		return price;
	}



	public void setPrice(double price) {
		this.price = price;
	}



	public int getCartID() {
		return cartID;
	}
	public void setCartID(int cartID) {
		this.cartID = cartID;
	}
	
	public int getCusID() {
		return cusID;
	}
	public void setCusID(int cusID) {
		this.cusID = cusID;
	}
	
	
	
	
	
}
