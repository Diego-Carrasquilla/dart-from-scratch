import 'dart:io';
import '../utils.dart';

void ejercicio1() //Determinar si un número es positivo, negativo o cero
{
  double numero = getValidNumber("Ingrese un número:");

  if (numero > 0) {
    print("El número es positivo");
  } else if (numero < 0) {
    print("El número es negativo");
  } else {
    print("El número es cero");
  }
}

void ejercicio2() //Operaciones básicas entre dos números
{
  double numero1 = getValidNumber("Ingrese el primer número:");
  double numero2 = getValidNumber("Ingrese el segundo número:");

  print("Suma: ${numero1 + numero2}");
  print("Resta: ${numero1 - numero2}");
  print("Multiplicación: ${numero1 * numero2}");

  if (numero2 != 0) {
    print("División: ${numero1 / numero2}");
  } else {
    print(
        "División: Indeterminado (no se puede dividir por cero (╯°□°）╯︵ ┻━┻)");
  }
}

void ejercicio3() //Determinar si un año es bisiesto
{
  int year = getValidYear(
      "Ingrese el Año:"); // Utilizamos getValidYear para obtener un número entero válido

  bool isLeapYear = esBisiesto(
      year); // Verificamos si es bisiesto, Metodo esBisiesto en Archivo Utils.
  String resultado = isLeapYear ? "SI es Bisiesto" : "NO es Bisiesto";

  print("$year $resultado.");
}

void ejercicio4() //Calcular el área y el perímetro de un rectángulo
{
  double base = getValidNumber("Ingrese la Base del rectángulo:");
  double altura = getValidNumber("Ingrese la Altura del rectángulo:");

  double area() => base * altura;
  double perimetro() => 2 * (base + altura);

  print("El área es: ${area()}");
  print("El perímetro es: ${perimetro()}");
}

void ejercicio5() //Encontrar el mayor de 3 números
{
  double num1 = getValidNumber("Ingrese el primer número:");
  double num2 = getValidNumber("Ingrese el segundo número:");
  double num3 = getValidNumber("Ingrese el tercer número:");

  double max = [num1, num2, num3].reduce((a, b) => a > b ? a : b);

  print("El mayor de los tres números es: $max");
}

void ejercicio6() //Calcular el factorial de un número
{
  double factDouble =
      getValidNumber('Ingrese el número para calcular su factorial:');
  int fact = factDouble.toInt(); // Convertir a entero para operar

  if (fact < 0) {
    print('El número no puede ser negativo.');
    return;
  }

  if (fact == 0 || fact == 1) {
    print('El factorial de $fact es: 1');
    return;
  }

  int factorial = 1;
  for (int i = 2; i <= fact; i++) {
    factorial *= i;
  }

  print('El factorial de $fact es: $factorial');
}

void ejercicio7() //Realizar una división
{
  try {
    double dividend = getValidNumber("Ingrese el Dividendo:");
    double divisor = getValidNumber("Ingrese el Divisor:");

    if (divisor == 0) {
      throw Exception("El divisor no puede ser cero.");
    }

    double result = dividend / divisor;
    print("El resultado de la división es: $result");
  } catch (e) {
    print("Error: ${e.toString()}");
  }
}

void ejercicio8() //Sumar números impares entre 1 y 100
{
  int suma = 0;
  for (int i = 1; i <= 100; i += 2) {
    suma += i;
  }
  print('La suma de los números impares entre 1 y 100 es: $suma');
}

void ejercicio9() //Operaciones con fracciones
{
  print('Suma de Fracciones');

  double num1 = getValidNumber('Ingrese el numerador de la primera fracción: ');
  double den1 =
      getValidNumber('Ingrese el denominador de la primera fracción: ');

  double num2 = getValidNumber('Ingrese el numerador de la segunda fracción: ');
  double den2 =
      getValidNumber('Ingrese el denominador de la segunda fracción: ');

  if (den1 == 0 || den2 == 0) {
    print('El denominador no puede ser cero.');
    return;
  }

  int numResult = num1.toInt() * den2.toInt() + num2.toInt() * den1.toInt();
  int denResult = den1.toInt() * den2.toInt();

  print('El resultado de la suma es: $numResult/$denResult');
}

void ejercicio10() //Palabra en orden inverso
{
  print("Ingrese una palabra:");
  String? palabra = stdin.readLineSync();
  if (palabra != null) {
    String palabraInvertida = palabra.split('').reversed.join('');
    print("La palabra invertida es: $palabraInvertida");
  } else {
    print("Entrada inválida.");
  }
}

void
    ejercicio11() //Solicitar al usuario 3 números y dar el promedio entre ellos
{
  double num1 = getValidNumber("Ingrese el primer número:");
  double num2 = getValidNumber("Ingrese el segundo número:");
  double num3 = getValidNumber("Ingrese el tercer número:");

  double promedio = (num1 + num2 + num3) / 3;

  print("El promedio de $num1, $num2, y $num3 es: $promedio");
}

void
    ejercicio12() //Solicitar al usuario 5 números y mostrar el número más grande de los 5
{
  double num1 = getValidNumber("Ingrese el primer número:");
  double num2 = getValidNumber("Ingrese el segundo número:");
  double num3 = getValidNumber("Ingrese el tercer número:");
  double num4 = getValidNumber("Ingrese el cuarto número:");
  double num5 = getValidNumber("Ingrese el quinto número:");

  double maxNum =
      [num1, num2, num3, num4, num5].reduce((a, b) => a > b ? a : b);

  print(
      "El número más grande entre $num1, $num2, $num3, $num4 y $num5 es: $maxNum");
}

void ejercicio13() //Ver si es un palíndromo
{
  print("Ingrese una palabra:");
  String? palabra = stdin.readLineSync();
  if (palabra != null) {
    String palabraInvertida = palabra.split('').reversed.join('');
    if (palabra.toLowerCase() == palabraInvertida.toLowerCase()) {
      print("La palabra '$palabra' es un palíndromo.");
    } else {
      print("La palabra '$palabra' no es un palíndromo.");
    }
  } else {
    print("Entrada inválida.");
  }
}

void ejercicio14() //Ver si un número es par o impar
{
  int numero = (getValidNumber("Ingrese un número:")).toInt();

  if (numero % 2 == 0) {
    print("El número $numero es par.");
  } else {
    print("El número $numero es impar.");
  }
}

void ejercicio15() //Ver si un número está en el rango del 0 al 10
{
  double numero = getValidNumber("Ingrese un número:");

  if (numero >= 1 && numero <= 10) {
    print("El número $numero está en el rango del 1 al 10.");
  } else {
    print("El número $numero no está en el rango del 1 al 10.");
  }
}
