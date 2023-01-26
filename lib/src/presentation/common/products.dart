class Product {
  final String name;
  final String about;
  final double price;
  final String description;
  final String image;

  Product({
    required this.name,
    required this.price,
    required this.description,
    required this.image,
    required this.about,
  });

  static const List<Product> products = [];
}
