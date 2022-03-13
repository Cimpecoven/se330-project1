
class Product {

  const Product({
    required this.id,
    required this.productName,
    required this.description,
    required this.imageUrls,
    required this.price,
    required this.colorOptions,
    required this.hasColorOptions,
    required this.isAccessory
  });

  final String id;
  final String productName;
  final String description;
  final List<String> imageUrls;
  final double price;
  final List<String> colorOptions; // Options for different colors: item at position 0 is default
  final bool hasColorOptions; // Let's us know whether the product has different options for color
  final bool isAccessory; // Let's us know whether to display in certain views; TODO: Should accessories be a different model?
}