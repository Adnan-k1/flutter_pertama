import 'package:get/get.dart';

class Players {
  String profileImage;
  String name;
  String position;
  int number;

  Players({
    required this.profileImage,
    required this.name,
    required this.position,
    required this.number,
  });
}

class FootballController extends GetxController {
  var players = <Players>[
    Players(
      profileImage: "https://th.bing.com/th/id/OIP.W6PBNPGnclmjSHcE-VbNRQHaHa?w=168&h=180&c=7&r=0&o=7&dpr=2&pid=1.7&rm=3",
      name: "Ronaldo",
      position: "Forward",
      number: 10,
    ),
    Players(
      profileImage: "https://th.bing.com/th/id/OIP.vT_k_e_JfE_cmaXwRcQqTgHaFH?w=288&h=199&c=7&r=0&o=7&dpr=2&pid=1.7&rm=3",
      name: "neymar",
      position: "pemain",
      number: 8,
    ),
    Players(
      profileImage: "https://th.bing.com/th/id/OIP.zNIXOPfZ-QqtWyGeIIYy4wHaEK?w=315&h=180&c=7&r=0&o=7&dpr=2&pid=1.7&rm=3  ",
      name: "ronaldo wati",
      position: "pemain",
      number: 5,
    ),
    Players(
      profileImage: "https://pbs.twimg.com/media/Fa0wO6BUIAE4A38.jpg:large",
      name: "ceking",
      position: "Goalkiper",
      number: 1,
    ),
  ].obs;

  void editPlayer(int index, Players updatedPlayer) {
    players[index] = updatedPlayer;
  }
}
