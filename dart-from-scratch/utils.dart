import 'dart:io';

double getValidNumber(String prompt) {
  while (true) {
    print(prompt);
    String? input = stdin.readLineSync();
    if (input != null) {
      try {
        return double.parse(input);
      } catch (e) {
        print("Entrada no válida. Por favor, ingrese un número.");
      }
    }
  }
}

int getValidYear(String prompt) //Metodo para verificar años
{
  int? year;
  while (year == null) {
    print(prompt);
    String? input = stdin.readLineSync();
    try {
      year = int.parse(input!);
    } catch (e) {
      print("Entrada inválida, por favor ingrese un año válido.");
    }
  }
  return year;
}

bool esBisiesto(int year) //metodo para verificar si un año es bisiesto
{
  // Un año es bisiesto si es divisible por 4
  // pero no es divisible por 100 a menos que también sea divisible por 400
  return (year % 4 == 0 && (year % 100 != 0 || year % 400 == 0));
}
