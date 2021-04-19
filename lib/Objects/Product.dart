class Product {
  String Url;
  String Title;
  String Description;
  int Price;

  Product.simple(this.Url,this.Title, this.Price);

  Product.full(this.Url,this.Title, this.Price, this.Description);
}
