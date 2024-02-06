void main() {
  print(greetEveryOne());
  print('Suma: ${addTwoNumbers(10, 20)}');
  print(greetPerson(name: 'Eric'));
}

String greetEveryOne() => 'Hola a todos';

int addTwoNumbers(int a, int b) => a + b;

int addTwoNumbersOptional(int a, [int b = 0]) {
  //b ??= 0;
  return a + b;
}

String greetPerson({required String name, String message = 'Hola'}) {
  return '$message $name';
}
