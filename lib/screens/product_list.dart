import 'package:flutter/material.dart';
import '../models/product.dart';
import '../widgets/product_tile.dart';

class ProductListScreen extends StatelessWidget {
  final List<Product> products = [
    Product(
      title: 'Airbuds by JBL',
      description: 'High-quality wireless airbuds with noise cancellation.',
      imageUrl: 'assets/jbl.jpeg',
      price: 18000.0,
    ),
    Product(
      title: 'Airbuds by Ronin',
      description: 'Affordable wireless airbuds with excellent battery life.',
      imageUrl: 'assets/Ronin.jpeg',
      price: 3000.0,
    ),
    Product(
      title: 'Airbuds by Apple',
      description: 'Premium airbuds with superior sound and water resistance.',
      imageUrl: 'assets/Apple.jpeg',
      price: 60000.0,
    ),
    Product(
      title: 'Airbuds by Audionic',
      description: 'Budget-friendly airbuds with decent sound quality.',
      imageUrl: 'assets/Aud.png',
      price: 2500.0,
    ),
  ];

  // Removed the const keyword from the constructor
  ProductListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Product List')),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ProductTile(product: products[index]);
        },
      ),
    );
  }
}
