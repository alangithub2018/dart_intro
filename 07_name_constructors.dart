void main() {
  final Map<String, dynamic> rawJson = {
    'name': 'Toney stark',
    'power': 'Money',
    'isAlive': true
  };

  final ironMan = Hero.fromJson(rawJson);

  // final Hero ironMan = Hero(
  //     name: 'Tony stark', power: 'Money', isAlive: rawJson['isAlive'] ?? false);

  // final Hero ironMan = Hero(name: 'Tony stark', power: 'Money', isAlive: false);

  print(ironMan);
}

class Hero {
  String name;
  String power;
  bool isAlive;

  Hero({required this.name, required this.power, required this.isAlive});

  Hero.fromJson(Map<String, dynamic> json)
      : name = json['name'] ?? 'No name found',
        power = json['power'] ?? 'No power found',
        isAlive = json['isAlive'] ?? 'No alive found';

  @override
  String toString() {
    return '$name, $power ${isAlive ? 'Yes' : 'Nope'}';
  }
}
