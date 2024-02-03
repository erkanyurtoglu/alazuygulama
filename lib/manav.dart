import 'package:alazuygulama/urunDetay.dart';
import 'package:flutter/material.dart';

class ManavPage extends StatefulWidget {
  const ManavPage({super.key});

  @override
  State<ManavPage> createState() => _ManavPageState();
}

class _ManavPageState extends State<ManavPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Center(child: Text("ALAZ Manav",style: TextStyle(color: Colors.red[900],fontSize: 25,fontWeight: FontWeight.bold),),),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(color: Colors.red[900],height: 100,
              child: Row(children: [
                GestureDetector(
                  onTap: () {Navigator.push(context,
                          MaterialPageRoute(builder: (context) => UrunDetay()));},
                  child: Image.asset('assets/images/yemek.jpg',width: 160,),
                ),
                Column(
                  children: [
                    Text("ALAZ Burger",style: TextStyle(color: Colors.white),),
                    Text("2 km | 1 saat 15 dk",style: TextStyle(color: Colors.white),),
                    Text("4,5",style: TextStyle(color: Colors.white),),
                  ],
                )
              ],),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(color: Colors.red[900],height: 100,
              child: Row(children: [
                GestureDetector(
                  onTap: () {Navigator.push(context,
                          MaterialPageRoute(builder: (context) => UrunDetay()));},
                  child: Image.asset('assets/images/yemek.jpg',width: 160,),
                ),
                Column(
                  children: [
                    Text("ALAZ Burger",style: TextStyle(color: Colors.white),),
                    Text("2 km | 1 saat 15 dk",style: TextStyle(color: Colors.white),),
                    Text("4,5",style: TextStyle(color: Colors.white),),
                  ],
                )
              ],),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(color: Colors.red[900],height: 100,
              child: Row(children: [
                GestureDetector(
                  onTap: () {Navigator.push(context,
                          MaterialPageRoute(builder: (context) => UrunDetay()));},
                  child: Image.asset('assets/images/yemek.jpg',width: 160,),
                ),
                Column(
                  children: [
                    Text("ALAZ Burger",style: TextStyle(color: Colors.white),),
                    Text("2 km | 1 saat 15 dk",style: TextStyle(color: Colors.white),),
                    Text("4,5",style: TextStyle(color: Colors.white),),
                  ],
                )
              ],),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(color: Colors.red[900],height: 100,
              child: Row(children: [
                GestureDetector(
                  onTap: () {Navigator.push(context,
                          MaterialPageRoute(builder: (context) => UrunDetay()));},
                  child: Image.asset('assets/images/yemek.jpg',width: 160,),
                ),
                Column(
                  children: [
                    Text("ALAZ Burger",style: TextStyle(color: Colors.white),),
                    Text("2 km | 1 saat 15 dk",style: TextStyle(color: Colors.white),),
                    Text("4,5",style: TextStyle(color: Colors.white),),
                  ],
                )
              ],),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(color: Colors.red[900],height: 100,
              child: Row(children: [
                GestureDetector(
                  onTap: () {Navigator.push(context,
                          MaterialPageRoute(builder: (context) => UrunDetay()));},
                  child: Image.asset('assets/images/yemek.jpg',width: 160,),
                ),
                Column(
                  children: [
                    Text("ALAZ Burger",style: TextStyle(color: Colors.white),),
                    Text("2 km | 1 saat 15 dk",style: TextStyle(color: Colors.white),),
                    Text("4,5",style: TextStyle(color: Colors.white),),
                  ],
                )
              ],),),
            ),
          ],
        )
      ),
    );
  }
}