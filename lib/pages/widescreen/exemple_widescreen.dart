import 'package:flutter/material.dart';

class ExempleWidescreen extends StatelessWidget {
  const ExempleWidescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("ini widescreen"),),
      body: Center(child: Text("contoh widescreen"),),
    );
  }
}