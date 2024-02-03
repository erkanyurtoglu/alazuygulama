import 'package:alazuygulama/anaSyf.dart';
import 'package:flutter/material.dart';

class OdemeOnay extends StatefulWidget {
  const OdemeOnay({super.key});

  @override
  State<OdemeOnay> createState() => _OdemeOnayState();
}

class _OdemeOnayState extends State<OdemeOnay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[900],
      body: SafeArea(
        child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(right: 260),
              child: IconButton(onPressed: (){Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));}, icon: Icon(Icons.home,size: 41,color: Colors.white ,)),
            ),
            Container(height: 300,width: 300,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/images/tik1.png"),
                fit: BoxFit.cover)
              )
            ),
            Padding(
              padding: const EdgeInsets.all(80.0),
              child: Text("Siparişiniz için Teşekkürler",style: TextStyle(fontSize: 35,color: Colors.white),),
            )
          ],
        ),        
      ),      
    );
  }
}