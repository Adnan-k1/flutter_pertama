import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalculatorController extends GetxController {
  final txtangka1 = TextEditingController();
  final txtangka2 = TextEditingController();
  var hasil = ''.obs;

  void tambah() {
    int angka1 = int.tryParse(txtangka1.text) ?? 0;
    int angka2 = int.tryParse(txtangka2.text) ?? 0;
    int hasiljumlah = angka1 + angka2;
    hasil.value = hasiljumlah.toString();
  }

  void kurang() {
    int angka1 = int.tryParse(txtangka1.text) ?? 0;
    int angka2 = int.tryParse(txtangka2.text) ?? 0;
    int hasiljumlah = angka1 - angka2;
    hasil.value = hasiljumlah.toString();
  }

  void kali() {
    int angka1 = int.tryParse(txtangka1.text) ?? 0;
    int angka2 = int.tryParse(txtangka2.text) ?? 0;
    int hasiljumlah = angka1 * angka2;
    hasil.value = hasiljumlah.toString();
  }

  void bagi() {
    int angka1 = int.tryParse(txtangka1.text) ?? 0;
    int angka2 = int.tryParse(txtangka2.text) ?? 1; 
    if (angka2 == 0) {
      hasil.value = 'Tidak bisa dibagi 0';
      return;
    }
    double hasiljumlah = angka1 / angka2;
    hasil.value = hasiljumlah.toStringAsFixed(2); 
  }

  void clear() {
    txtangka1.clear();
    txtangka2.clear();
    hasil.value = '';
  }
}
