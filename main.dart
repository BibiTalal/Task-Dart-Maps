void main() {
  Map<String, dynamic> menu = {
    'burger': 6.5,
    'pizza': 5,
    'water': 1.5,
  };
  menu["chocolate cake"] = 3;
  menu["water"] = 0.75;
  // print(menu);
  print("Menu:\n\n");
  for (var food in menu.entries) {
    print("${food.key} -> ${food.value}KD");
  }

  // const order = ['pizza', 'water'];
  const order = ['pizza', 'rice'];
  double receipt = 0;
  order.forEach((food) {
    if (menu[food] != null) {
      receipt = receipt + menu[food];
    } else {
      print("$food not on the Menu");
    }
  });
  print("Total=\KD$receipt");
}
