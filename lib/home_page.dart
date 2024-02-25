import 'package:alazuygulama/product_card.dart';
import 'package:alazuygulama/products.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool kan = false, deprem = false, acilyardim = false;
  int isSelected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            automaticallyImplyLeading: false,
            title: const TextField(
              decoration: InputDecoration(
                hintText: 'Ürün ara',
                prefixIcon: Icon(
                  Icons.search_outlined,
                ),
              ),
            )),
        body: Column(children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  "Kategoriler:",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  _buildProductCategory(
                      index: 0, name: "assets/images/logox.png"),
                  _buildProductCategory(
                      index: 1, name: "assets/images/kan_kat.png"),
                  _buildProductCategory(
                      index: 2, name: "assets/images/deprem_k.png"),
                  _buildProductCategory(
                      index: 3, name: "assets/images/acil_kat.png"),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Expanded(
              child: isSelected == 0
                  ? _buildAllProducts()
                  : isSelected == 1
                      ? _buildKan()
                      : isSelected == 2
                          ? _buildDeprem()
                          : _buildAcilYardim())
        ]));
  }

  _buildProductCategory({required int index, required String name}) => Padding(
        padding: const EdgeInsets.all(4),
        child: GestureDetector(
          onTap: () => setState(() => isSelected = index),
          child: Material(
            elevation: 4,
            borderRadius: BorderRadius.circular(8),
            child: Container(
                width: 90,
                height: 80,
                decoration: BoxDecoration(
                  color: isSelected == index ? Colors.grey[400] : Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Image.asset(name)),
          ),
        ),
      );
  _buildAllProducts() => GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: (100 / 140),
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
        ),
        scrollDirection: Axis.vertical,
        itemCount: MyProducts.allProducts.length,
        itemBuilder: (context, index) {
          final allProducts = MyProducts.allProducts[index];
          return ProductCard(
            product: allProducts,
          );
        },
      );
  _buildKan() => GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: (100 / 140),
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
        ),
        scrollDirection: Axis.vertical,
        itemCount: MyProducts.kanList.length,
        itemBuilder: (context, index) {
          final kanList = MyProducts.kanList[index];
          return ProductCard(
            product: kanList,
          );
        },
      );
  _buildDeprem() => GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: (100 / 140),
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
        ),
        scrollDirection: Axis.vertical,
        itemCount: MyProducts.depremList.length,
        itemBuilder: (context, index) {
          final depremList = MyProducts.depremList[index];
          return ProductCard(
            product: depremList,
          );
        },
      );
  _buildAcilYardim() => GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: (100 / 140),
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
        ),
        scrollDirection: Axis.vertical,
        itemCount: MyProducts.acilyardimList.length,
        itemBuilder: (context, index) {
          final acilyardimList = MyProducts.acilyardimList[index];
          return ProductCard(
            product: acilyardimList,
          );
        },
      );
}
