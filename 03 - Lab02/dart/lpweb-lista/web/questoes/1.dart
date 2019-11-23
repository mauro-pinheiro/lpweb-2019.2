import 'dart:html';

import 'package:lpweb_lista/lib_helpers.dart';

void main() {
  querySelector('#addButton').onClick.listen((event) {
    event.preventDefault();
    InputElement txtNumero = querySelector('#input');
    double numero = double.tryParse(txtNumero.value);
    (querySelector('#output') as TableElement).addRow()
      ..addCell().text = "$numero"
      ..addCell().text = "${numero * numero}"
      ..addCell().append(ButtonElement()
        ..innerHtml = '<i class="fas fa-ban"></i>'
        ..onClick.listen((e) => deleteRowListener(e)));
  });
}
