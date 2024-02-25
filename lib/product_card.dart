import 'package:alazuygulama/cart_provider.dart';
import 'package:alazuygulama/products.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Material(
        borderRadius: BorderRadius.circular(12),
        elevation: 5,
        child: Container(
          width: 140,
          height: 140,
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 120,
                width: 120,
                child: Image.asset(product.image),
              ),
              Text(
                product.name,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              ElevatedButton(
                  onPressed: () =>
                      Provider.of<CartProvider>(context, listen: false)
                          .toggleProduct(product),
                  child: Text(
                    "İste",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
