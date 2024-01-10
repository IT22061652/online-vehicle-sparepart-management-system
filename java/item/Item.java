package item;

public class Item {

	private int SellerID;
	private int ItemID;
	private String title;
	private String category;
	private String description;
	private int quantity;
	private double price;
	private String postedDate;
	
	private String mainItemImage;
	public Item(int sellerID, int itemID, String title, String category, String description, int quantity, double price,
			String postedDate,  String mainItemImage) {
		super();
		SellerID = sellerID;
		ItemID = itemID;
		this.title = title;
		this.category = category;
		this.description = description;
		this.quantity = quantity;
		this.price = price;
		this.postedDate = postedDate;
		
		this.mainItemImage = mainItemImage;
	}
	public int getSellerID() {
		return SellerID;
	}
	public void setSellerID(int sellerID) {
		SellerID = sellerID;
	}
	public int getItemID() {
		return ItemID;
	}
	public void setItemID(int itemID) {
		ItemID = itemID;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
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
	public String getPostedDate() {
		return postedDate;
	}
	public void setPostedDate(String postedDate) {
		this.postedDate = postedDate;
	}
	
	public String getMainItemImage() {
		return mainItemImage;
	}
	public void setMainItemImage(String mainItemImage) {
		this.mainItemImage = mainItemImage;
	}
	
	
	
	

	
	
	
	
	
}
