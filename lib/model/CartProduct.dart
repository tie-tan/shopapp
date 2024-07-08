class CartProduct {
  final String title;
  final String imageUrl;
  final double price;
  final String id;
  int quantity;

  CartProduct({
    required this.title,
    required this.imageUrl,
    required this.price,
    required this.id,
    this.quantity = 1,
  });
}
