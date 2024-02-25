import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AdminPanel extends StatefulWidget {
  @override
  State<AdminPanel> createState() => _OrderListPageState();
}

class _OrderListPageState extends State<AdminPanel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin Paneli'),
      ),
      body: OrderList(),
    );
  }
}

class OrderList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseFirestore.instance.collection('orders').snapshots(),
      builder: (context,
          AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        }

        if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        }

        if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
          return Text('No orders available.');
        }

        List<Order> orders = snapshot.data!.docs.map((doc) {
          Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
          return Order.fromMap(data);
        }).toList();

        return ListView.builder(
          itemCount: orders.length,
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
                    trailing: IconButton(
                      icon: const Icon(Icons.done),
                      onPressed: () {},
                    ),
                    title: Text(
                      'Tarih: ${orders[index].orderDate.toString()}',
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Ürünler:',
                          style: TextStyle(fontSize: 16),
                        ),
                        Column(
                          children: orders[index].products.map((product) {
                            return ListTile(
                              leading: SizedBox(
                                width: 100,
                                height: 100,
                                child: Image.asset(
                                  product.image,
                                ),
                              ),
                              title: Text('Ürün Adı: ${product.name}'),
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}

class Order {
  final List<Product> products;
  final DateTime orderDate;

  Order({
    required this.products,
    required this.orderDate,
  });

  factory Order.fromMap(Map<String, dynamic> map) {
    List<dynamic> productsData = map['products'];
    List<Product> products = productsData.map((productMap) {
      return Product.fromMap(productMap);
    }).toList();

    return Order(
      products: products,
      orderDate: map['orderDate'].toDate(),
    );
  }
}

class Product {
  final int id;
  final String name;
  final String image;
  final String description;
  int quantity;

  Product({
    required this.id,
    required this.name,
    required this.image,
    required this.description,
    required this.quantity,
  });

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      id: map['id'],
      name: map['name'],
      image: map['image'],
      description: map['description'],
      quantity: map['quantity'],
    );
  }
}
