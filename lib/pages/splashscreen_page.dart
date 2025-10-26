import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_pertama/controller/splashscreen_controller.dart';
import 'package:flutter_pertama/controller/login_controller.dart';
import 'package:get/get.dart';

class SplashscreenPage extends StatefulWidget {
  SplashscreenPage({super.key});

  @override
  _SplashscreenPageState createState() => _SplashscreenPageState();
}

class _SplashscreenPageState extends State<SplashscreenPage>
    with SingleTickerProviderStateMixin {
  final controller = Get.find<SplashscreenController>();
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    // Inisialisasi animasi fade-in
    _animationController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeIn),
    );
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue.shade200, Colors.blue.shade800], 
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: FadeTransition(
            opacity: _fadeAnimation,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                Icon(
                  Icons.flutter_dash, 
                  size: MediaQuery.of(context).size.width * 0.3, 
                  color: Colors.white, 
                ),
                SizedBox(height: 20),
                
                Text(
                  'Flutter Pertama', 
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white, 
                    fontFamily: 'Roboto', 
                  ),
                ),
                SizedBox(height: 10),
              
                Text(
                  'Selamat Datang',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white.withOpacity(0.8),   
                  ),
                ),
                // Elemen loading dihapus di sini
              ],
            ),
          ),
        ),
      ),
    );
  }
}