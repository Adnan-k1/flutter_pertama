import 'package:flutter_pertama/controller/kalkulatorcontroller.dart';
import 'package:get/get.dart';

class CalculatorBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<CalculatorController>(() => CalculatorController());//hanya di panggil jika di butuhkan
    
  }
  
}