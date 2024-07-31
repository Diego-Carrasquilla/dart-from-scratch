import 'dart:io';
import '../challenges/indexCh.dart';

class Menu {
  void MostrarMenu() {
    print('''
 _ __ ___   ___ _ __  _   _ 
| '_ ` _ \\ / _ \\ '_ \\| | | |
| | | | | |  __/ | | | |_| |
|_| |_| |_|\\___|_| |_|\\__,_|
  ''');
    //ascii art de:https://www.asciiart.eu/text-to-ascii-art

    while (true) {
      print(
          "Seleccione el ejercicio que desea ejecutar o escriba 'q' o 'exit' para salir:");
      print("1. Determinar si un número es positivo, negativo o cero");
      print("2. Operaciones básicas entre dos números");
      print("3. Determinar si un año es bisiesto");
      print("4. Calcular el área y el perímetro de un rectángulo");
      print("5. Encontrar el mayor de 3 números");
      print("6. Calcular el factorial de un número");
      print("7. Realizar una división");
      print("8. Sumar números impares entre 1 y 100");
      print("9. Operaciones con fracciones");
      print("10. Palabra en orden inverso");
      print("11. Solicitar al usuario 3 números y dar el promedio entre ellos");
      print(
          "12. Solicitar al usuario 5 números y mostrar el número más grande de los 5");
      print("13. Ver si es un palíndromo");
      print("14. Ver si un número es par o impar");
      print("15. Ver si un número está en el rango del 0 al 10");

      String? input = stdin.readLineSync();

      if (input == 'q' || input == 'exit') {
        print('''
  _   _           _          _                           _ 
 | | | | __ _ ___| |_ __ _  | |   _   _  ___  __ _  ___ | |
 | |_| |/ _` / __| __/ _` | | |  | | | |/ _ \\/ _` |/ _ \\| |
 |  _  | (_| \\__ \\ || (_| | | |__| |_| |  __/ (_| | (_) |_|
 |_| |_|\\__,_|___/\\__\\__,_| |_____\\__,_|\\___|\\__, |\\___/(_)
                                             |___/          
                                             ''');
        break;
      }

      switch (input) {
        case '1':
          ejercicio1();
          break;
        case '2':
          ejercicio2();
          break;
        case '3':
          ejercicio3();
          break;
        case '4':
          ejercicio4();
          break;
        case '5':
          ejercicio5();
          break;
        case '6':
          ejercicio6();
          break;
        case '7':
          ejercicio7();
          break;
        case '8':
          ejercicio8();
          break;
        case '9':
          ejercicio9();
          break;
        case '10':
          ejercicio10();
          break;
        case '11':
          ejercicio11();
          break;
        case '12':
          ejercicio12();
          break;
        case '13':
          ejercicio13();
          break;
        case '14':
          ejercicio14();
          break;
        case '15':
          ejercicio15();
          break;

        default:
          print('Opción no válida, por favor intente de nuevo.  ¯\\_(ツ)_/¯ ');
          break;
      }
    }
  }
}
