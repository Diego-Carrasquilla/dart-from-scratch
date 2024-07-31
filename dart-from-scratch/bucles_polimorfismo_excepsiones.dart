import 'dart:math';
import 'dart:io';

void main() {
  var circ = Circulo();

  circ.radio = 20;
  var resultArea = circ.area();
  var resultPerim = circ.perimetro();

  print(
      'El área es: $resultArea y el perímetro es: $resultPerim el nuevo radio es ${circ.add10()}');

  int prev = 0, next = 1, sum;
  for (int i = 0; i < 10; i++) {
    print(prev);
    sum = prev + next;
    prev = next;
    next = sum;
  }

  try {
    print('Número a Dividir: ');
    double? n = double.tryParse(stdin.readLineSync() ?? '');
    if (n == null) {
      throw FormatException('Numero inválido');
    }

    print('Divisor: ');
    double? divisor = double.tryParse(stdin.readLineSync() ?? '');
    if (divisor == null) {
      throw FormatException('Divisor inválido');
    }

    if (divisor == 0) {
      // ignore: deprecated_member_use
      throw IntegerDivisionByZeroException();
    }

    print('Resultado: ${n / divisor}');
  } catch (e) {
    // ignore: deprecated_member_use
    if (e is IntegerDivisionByZeroException) {
      print('¡No se puede dividir por 0!');
    } else if (e is FormatException) {
      print('Entrada inválida.');
    } else {
      print('Error desconocido.');
    }
  }
}

abstract class Figura {
  double area();
  double perimetro();
}

abstract class IExtraCalculations {
  double add10();
}

class Circulo implements Figura, IExtraCalculations {
  double radio = 0;

  @override
  double area() => pi * pow(radio, 2);

  @override
  double perimetro() => 2 * pi * radio;

  @override
  double add10() => radio + 10;
}
