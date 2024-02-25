import 'package:alazuygulama/cart_provider.dart';
import 'package:alazuygulama/products.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  final FirestoreService firestoreService = FirestoreService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<CartProvider>(
        builder: (context, value, child) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 30),
                child: Text(
                  "Sepetim",
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: ListView.builder(
                    itemCount: value.cart.length,
                    padding: EdgeInsets.all(12),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Material(
                          elevation: 5,
                          borderRadius: BorderRadius.circular(8),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.white),
                            child: ListTile(
                              leading: Image.asset(
                                value.cart[index].image,
                                height: 36,
                              ),
                              title: Text(
                                value.cart[index].name,
                                style: const TextStyle(fontSize: 18),
                              ),
                              trailing: IconButton(
                                icon: const Icon(Icons.cancel),
                                onPressed: () => Provider.of<CartProvider>(
                                        context,
                                        listen: false)
                                    .removeItemFromCart(index),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 160, bottom: 50),
                child: ElevatedButton(
                    onPressed: () {
                      _placeOrder();
                    },
                    child: Text(
                      "Onayla",
                      style: TextStyle(fontSize: 18),
                    )),
              )
            ],
          );
        },
      ),
    );
  }

  void _placeOrder() {
    List<Product> cartItems =
        Provider.of<CartProvider>(context, listen: false).cart;
    firestoreService.addOrder(cartItems);
    Provider.of<CartProvider>(context, listen: false).clearCart();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Siparişiniz alındı!'),
        duration: Duration(seconds: 2),
      ),
    );
  }
}

class FirestoreService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> addOrder(List<Product> cart) async {
    try {
      List<Map<String, dynamic>> products = cart
          .map((product) => {
                'id': product.id,
                'name': product.name,
                'image': product.image,
                'description': product.description,
                'quantity': product.quantity,
              })
          .toList();

      await _firestore.collection('orders').add({
        'products': products,
        'orderDate': FieldValue.serverTimestamp(),
      });
    } catch (e) {
      print('Hata oluştu: $e');
    }
  }
}
