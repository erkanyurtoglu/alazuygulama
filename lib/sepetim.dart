import 'package:alazuygulama/odemeOnay.dart';
import 'package:flutter/material.dart';

class SepetPage extends StatefulWidget {
  const SepetPage({super.key});

  @override
  State<SepetPage> createState() => _SepetPageState();
}
List<String> adres = ['adres1'];
List<String> odeme = ['odeme1'];

class _SepetPageState extends State<SepetPage> {
    String currentOption = adres[0];
    String currentOptions = odeme[0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        children: [
          Center(child: Text("Sepetim",style: TextStyle(color: Colors.red[900],fontSize: 25,fontWeight: FontWeight.bold),),),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(color: Colors.red[900],height: 100,
              child: Row(children: [
                Image.asset('assets/images/yemek.jpg',width: 160,),
                Column(
                  children: [
                    Text("ALAZ Burger",style: TextStyle(color: Colors.white),),
                    Text("2 km | 1 saat 15 dk",style: TextStyle(color: Colors.white),),
                    Text("4,5",style: TextStyle(color: Colors.white),),
                  ],
                )
              ],),),
            ),
            Center(child: Text("Ödeme",style: TextStyle(color: Colors.red[900],fontSize: 25,fontWeight: FontWeight.bold),),),
            Text("Adres Bilgisini Seçiniz:                       ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),                  
                ListTile(
                    title: const Text('Çamlaraltı, Hüseyin Yılmaz Cd. No:67, Merkezefendi/Denizli'),
                    leading: Radio(
                    value: adres[0],
                    groupValue: currentOption,
                    onChanged: (value) {
                      setState(() {
                        currentOption = value.toString(); 
                      });
                    }
                  ),
                ),
             Text("Ödeme Yöntemini Seçiniz:                 ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
             ListTile(
                    title: const Text('Kredi Kartı'),
                    leading: Radio(
                    value: odeme[0],
                    groupValue: currentOptions,
                    onChanged: (value) {
                      setState(() {
                        currentOption = value.toString(); 
                      });
                    }
                  ),
                ),
                Container(child:TextButton(onPressed: (){Navigator.push(context,
                        MaterialPageRoute(builder: (context) => OdemeOnay()));}, 
                child: Text("Ödeme Yap",style: TextStyle(color: Colors.white),)),color: Colors.red[900],)  
        ],
      )),
    );
  }
}