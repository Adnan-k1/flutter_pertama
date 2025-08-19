import 'package:get/get.dart';
import 'football_controller.dart';

class FootballEditController extends GetxController {
  final FootballController footballController = Get.find();

  late int index;

  void setIndex(int i) {
    index = i;
  }

  void saveEdit(Players updatedPlayer) {
    footballController.editPlayer(index, updatedPlayer);
  }
}
