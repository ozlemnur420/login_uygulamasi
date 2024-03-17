import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'LOGİN UYGULAMASI'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    var ekran_bilgisi=MediaQuery.of(context);
    final double ekran_yuksekligi=ekran_bilgisi.size.height;
    final double ekran_genisligi=ekran_bilgisi.size.width;

    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body:Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Padding(
                 padding: EdgeInsets.only(bottom: ekran_yuksekligi/20),
                 child: SizedBox(
                    width: ekran_genisligi/4,
                     height: ekran_yuksekligi/6,
                     child: Image.asset("resimler/logo.png")
                 ),
               ),
          
               Padding(
                 padding: EdgeInsets.all(ekran_yuksekligi/30),
                 child: TextField(
                     decoration: InputDecoration(
                     hintText: "Kullanıcı adı",
                     filled: true,
                     fillColor: Colors.white,
                     border: OutlineInputBorder(
                       borderRadius: BorderRadius.all( Radius.circular(10.0)),
                     ),
          
                   ),
                 ),
               ),
          
              Padding(
                padding: EdgeInsets.all(ekran_yuksekligi/30),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Şifre",
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all( Radius.circular(10.0)),
                    ),
          
                  ),
                ),
              ),
          
              Padding(
                padding: EdgeInsets.all(ekran_yuksekligi/30),
                child: SizedBox(
                  width: ekran_genisligi/1.2,
                  height: ekran_yuksekligi/12,
                  child: ElevatedButton(
                    child: Text("GİRİŞ YAP", style: TextStyle(fontSize: ekran_genisligi/25 ),) ,
                    onPressed:(){
                      print("Giriş yapıldı");
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.yellowAccent,
                    ),
                  ),
                ),
              ),
          
              GestureDetector(
                onTap:(){
                  print("Yardım seçildi");
                },
                child: Text(
                    "YARDIM ?",
                     style: TextStyle(
                     color: Colors.pinkAccent,
                     fontWeight: FontWeight.bold,
                     fontSize: ekran_genisligi/30
                
                ),
                ),
              ),
            ],
          
          ),
        ),

      ),

    );
  }
}
