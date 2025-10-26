import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_pertama/helper/database_halper.dart';

class ContactController extends GetxController {
  final TextEditingController nameController = TextEditingController();
  final names = <Map<String, dynamic>>[].obs;
  final _dbHelper = DBHelper();

 
  final isEditing = false.obs; 
  final editingId = (-1).obs; 

  @override
  void onInit() {
    super.onInit();
    fetchNames();
  }

  Future<void> fetchNames() async {
    final data = await _dbHelper.getNames();
    names.value = data;
  }
  
  
  Future<void> _internalAddName() async { 
    final text = nameController.text.trim();
    if (text.isEmpty) return;

    await _dbHelper.insertName(text);
    nameController.clear();
    fetchNames();
  }

  Future<void> deleteName(int index) async {
    final id = names[index]['id'] as int;
    await _dbHelper.deleteById(id);
    fetchNames();
  }

  // LOGIKA UPDATE:

  void startEdit(int id, String currentName) {
    editingId.value = id;
    nameController.text = currentName;
    isEditing.value = true;
  }

  Future<void> _internalSaveEdit() async { 
    final newName = nameController.text.trim();
    final id = editingId.value;

    if (newName.isEmpty || id == -1) return;

    await _dbHelper.updateName(id, newName);

    // Reset status
    nameController.clear();
    editingId.value = -1;
    isEditing.value = false;
    
    fetchNames();
  }

  
  Future<void> addOrUpdateName() async {
    if (isEditing.value) {
      await _internalSaveEdit();
    } else {
      await _internalAddName();
    }
  }

  @override
  void onClose() {
    nameController.dispose();
    super.onClose();
  }
}