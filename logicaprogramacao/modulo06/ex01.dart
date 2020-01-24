// exemplo do emprego de stdout + stdin para entrada manual
// de valores na mesma linha...

import 'dart:io';

void main() {
  stdout.write('Digite qualquer coisa: ');
  String input = stdin.readLineSync();
  stdout.writeln('Voce digitou: $input');
}