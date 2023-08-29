import 'dart:ffi';

class Product {
  final int id;
  final String name;
  final String description;
  final String content;
  final String status;
  final String image;
  final List<String> images;
  final String sku;
  final int quantity;
  final int allowCheckoutWhenOutOfStock;
  final int isFeatured;
  final Float price;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.content,
    required this.status,
    required this.image,
    required this.images,
    required this.sku,
    required this.quantity,
    required this.allowCheckoutWhenOutOfStock,
    required this.isFeatured,
    required this.price,
  });

  Map toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'content': content,
      'status': status,
      'image': image,
      'images': images,
      'sku': sku,
      'quantity': quantity,
      'allowCheckoutWhenOutOfStock': allowCheckoutWhenOutOfStock,
      'isFeatured': isFeatured,
      'price': price,
    };
  }
}
