library contact;

import 'dart:html';

part 'contacts.dart';

display() {
  String list = '';
  for (var contact in contacts) {
    var acontact = '''
      <a href="${contact.e_mail}">
        ${contact.name} ${contact.tel}
      </a>''';
    list = '$list ${acontact} <br/> ${contact.description} <br/><br/>';
  }
  // the HTML library defines a global "document" variable
  document.query('#contacts').innerHtml = list;
}

void main() {
  init();
  display();
}