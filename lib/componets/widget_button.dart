import 'package:flutter/material.dart';

class CoustumButton extends StatelessWidget {
  final String text;               
  final VoidCallback onPressed;   

  const CoustumButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed, 
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 50), 
        backgroundColor: Colors.blueAccent,            
        textStyle: const TextStyle(fontSize: 16),     
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),     
        ),
      ),
      child: Text(text),
    );
  }
}
