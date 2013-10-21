library contact;

import 'dart:html';

part 'contacts.dart';

display() {
  String list = '';

  for (var contact in contacts) {
    var acontact = '''
        ${contact.name} <br/>${contact.tel} <-----> ${contact.e_mail} 
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