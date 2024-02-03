import 'package:alazuygulama/manav.dart';
import 'package:alazuygulama/market.dart';
import 'package:alazuygulama/my_text_field.dart';
import 'package:alazuygulama/profilSyf.dart';
import 'package:alazuygulama/yemek.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const LatLng ilkkonum = LatLng(37.7385183, 29.0923628);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[900],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: MyTextField(labeltext: "Depremzede İhtiyacı Ara...", prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey[900],
                    ),),
              ),
                  const SizedBox(
                height: 10,
              ),
                  Container(height: 250,width: 350, child: GoogleMap(initialCameraPosition: CameraPosition(target: ilkkonum,zoom: 16),
                  markers: {Marker(markerId: MarkerId("teknokent"),position: ilkkonum)},)),
                  const SizedBox(
                height: 10,
              ),
              Container(
                decoration:  BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  color: Colors.white
                ),
                child: Column(
                  children: [
                    Container(
                      color: Colors.white,
                    ),
                    const 
                    SizedBox(
                      height: 20,
                    ),
                  Container(height:0,color: Colors.white,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                   GestureDetector(
                  onTap: () {Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ManavPage()));},
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('assets/images/hastane.jpg',width: 160,height: 160,),
                  ),
                ),
                GestureDetector(
                  onTap: () {Navigator.push(context,
                          MaterialPageRoute(builder: (context) => YemekPage()));},
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('assets/images/kangrup.jpg',width: 160,height: 160,),
                  ),
                ),
            ],),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                   GestureDetector(
                  onTap: () {Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MarketPage()));},
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('assets/images/market.jpg',width: 160,height: 159,),
                  ),
                ),
                GestureDetector(
                  onTap: () {Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ProfilPage()));},
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('assets/images/logo.jpg',width: 160,height: 160,),
                  ),
                ),
            ],) 
                  ],
                ),
              ),
                 
            ],
          ),
        )
      ),
    );
  }
}