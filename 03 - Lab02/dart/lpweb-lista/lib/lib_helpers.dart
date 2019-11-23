import 'dart:html';

void deleteRowListener(Event event) {
  Element target = event.target;
  TableRowElement row;
  while (!(target is TableElement)) {
    target = target.parent;
    if (target is TableRowElement) {
      row = target;
    }
  }

  (target as TableElement).deleteRow(row.rowIndex);
}
