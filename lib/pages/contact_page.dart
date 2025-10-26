import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_pertama/controller/contact_controller.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ContactController());

    return Scaffold(
      appBar: AppBar(title: const Text("Contact Name Page")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Obx(() => Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: controller.nameController,
                        decoration: InputDecoration(
                          hintText: controller.isEditing.value
                              ? "Edit Name"
                              : "Enter New Name",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8)),
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 8),
                        ),
                        onSubmitted: (_) => controller.addOrUpdateName(),
                      ),
                    ),
                    const SizedBox(width: 8),
                    ElevatedButton(
                      onPressed: controller.addOrUpdateName,
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(14),
                        backgroundColor: controller.isEditing.value
                            ? Colors.orange
                            : Colors.blue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                      ),
                      child: Icon(
                        controller.isEditing.value ? Icons.save : Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ],
                )),

            const SizedBox(height: 16),

            // 🔹 List kontak
            Expanded(
              child: Obx(() {
                if (controller.names.isEmpty) {
                  return const Center(child: Text("No contacts yet"));
                }
                return ListView.builder(
                  itemCount: controller.names.length,
                  itemBuilder: (_, index) {
                    final contact = controller.names[index];
                    final id = contact['id'] as int;
                    final name = contact['name'] as String;

                    return ListTile(
                      title: Text(name),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.edit, color: Colors.blue),
                            onPressed: () => controller.startEdit(id, name),
                          ),
                          IconButton(
                            icon: const Icon(Icons.delete, color: Colors.red),
                            onPressed: () => controller.deleteName(index),
                          ),
                        ],
                      ),
                    );
                  },
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
