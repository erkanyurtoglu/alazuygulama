import 'package:alazuygulama/anaSyf.dart';
import 'package:flutter/material.dart';

class ProfilPage extends StatefulWidget {
  const ProfilPage({super.key});

  @override
  State<ProfilPage> createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        children: [Row(
          children: [
            IconButton(onPressed: (){Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));}, icon: Icon(Icons.home,size: 41,color: Colors.grey[800] ,)),
                          SizedBox(width: 95,),
            Text("Profilim",style: TextStyle(color: Colors.red[900],fontSize: 25,fontWeight: FontWeight.bold),),
          ],
        ),
        Image.asset("assets/images/logo.jpg",height: 150,),
        Center(child: Text("Alaz Takımı",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),),
        Center(child: Text("alaztakimi@gmail.com",style: TextStyle(fontSize: 15),),),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 31,),
              Text("Adreslerim: ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Text("Çamlaraltı, Hüseyin Yılmaz Cd.No:67, Merkezefendi/Denizli",style: TextStyle(fontSize: 16),),
              SizedBox(height: 31,),
              Text("Telefon:",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          SizedBox(height: 10,),
              Text("(0258) 215 50 01",style: TextStyle(fontSize: 16),),
            ],
          ),
        ),], 
      )),
    );
  }
}