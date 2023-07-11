public class Store {
    @SerializedName("name")
    public String name;
    @SerializedName("thumbnail")
    public String thumbnail;
    @SerializedName("imgurl")
    public String imgurl;
    @SerializedName("desc")
    public String desc;
    @SerializedName("price")
    public List<Price> price;
    @SerializedName("discount_start")
    public int discountStart;
    @SerializedName("discount_end")
    public int discountEnd;
}
