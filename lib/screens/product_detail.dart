import 'package:flutter/material.dart';
import 'package:covela/models/product_entry.dart';

class ProductDetailPage extends StatelessWidget {
  final ProductEntry product;

  const ProductDetailPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.fields.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Name: ${product.fields.name}",
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "Price: ${product.fields.price}",
              style: const TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 10),
            Text(
              "Description: ${product.fields.description}",
              style: const TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 10),
            Text(
              "Quantity: ${product.fields.quantity}",
              style: const TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Back to List'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
