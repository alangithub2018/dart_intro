void main() {
  final Hero wolverine = new Hero(name: 'Logan', power: 'Regeneracion');
  print(wolverine.toString());
  print(wolverine.name);
  print(wolverine.power);
}

class Hero {
  String name;
  String power;

  Hero({required this.name, this.power = 'sin poder'});

  // Hero(String pName, String pPower)
  //     : name = pName,
  //       power = pPower;

  @override
  String toString() {
    return '$name - $power';
  }
}
