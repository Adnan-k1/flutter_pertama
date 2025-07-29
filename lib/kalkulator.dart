import 'package:flutter/material.dart';

class Kalkulator extends StatefulWidget {
  const Kalkulator({super.key});

  @override
  State<Kalkulator> createState() => _KalkulatorState();
}

class _KalkulatorState extends State<Kalkulator> {
  final TextEditingController angka1Controller = TextEditingController();
  final TextEditingController angka2Controller = TextEditingController();

  String hasil = "";

  void hitung(String operator) {
    final String a1 = angka1Controller.text;
    final String a2 = angka2Controller.text;

    if (a1.isEmpty || a2.isEmpty) {
      setState(() {
        hasil = "mohon isi kedua angka";
      });
      return;
    }
    final int angka1 = int.tryParse(a1)??0;
    final int angka2 = int.tryParse(a2)??0;

    setState(() {
      switch (operator){
        case'+':
        hasil = "hasil ${angka1+angka2}";
        break;
        case'-':
        hasil = "hasil ${angka1-angka2}";
        break;
        case'*':
        hasil = "hasil ${angka1*angka2}";
        break;
        case'/':
        hasil = "hasil ${angka1/angka2}";
        break;
        
      }
    });
  }

  void reset(){
    setState(() {
      angka1Controller.clear();
      angka2Controller.clear();
      hasil = "";
    });
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("kalkulator sederhanaq")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: angka1Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "angka 1",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: angka2Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "angka 2",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: () => hitung('+'), child: Text("+")),
                ElevatedButton(onPressed: () => hitung('-'), child: Text("-")),
                ElevatedButton(onPressed: () => hitung('*'), child: Text("*")),
                ElevatedButton(onPressed: () => hitung('/'), child: Text("/")),
              ],
            ),
            SizedBox(height: 20,),
            Text(
              hasil,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: reset,
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              child: Text("Reset"),)
          ],
        ),
      ),
    );
  }
}
