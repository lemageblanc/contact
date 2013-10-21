library contact;

import 'dart:html';
import 'package:dartlero/dartlero.dart';
part 'contacts.dart';

display() {
  String list = '''<table border=1>
<tr>
  <th> Nom et Prénoms </th>
  <th> Téléphone </th>
  <th> Courriel </th>
  <th> Description </th>
  <th> Modifier </th>
  <th> Supprimer </th>
</tr>
''';
  for (var contact in contacts) {
    var art="_"+contact.name.replaceAll(" ", "");
    var art2= contact.name.replaceAll(" ", "");
    var acontact = '''
<tr>
    <td> ${contact.name}</td>
    <td> ${contact.tel} </td> 
    <td class="mail"> ${contact.e_mail} </td>
    <td> ${contact.description} </td>
    <td class="modif"> <button id="${art2}" title="${contact.name}">Modifier</button>  </td>
    <td class="suppr"> <button id="${art}" title="${contact.name}">Supprimer</button> </td>
 
</tr>
''';
    list = '$list ${acontact}';
  }
  var acontact = '''</table>''';
// the HTML library defines a global "document" variable
  document.query('#contacts').innerHtml = list;
    list = '$list ${acontact}';
    for (var contact in contacts) {
      var  supp = "#_"+contact.name.replaceAll(" ", "");
      var  modif = "#"+contact.name.replaceAll(" ", "");
      query(supp).onClick.listen(supprimer);
      query(modif).onClick.listen(modifier);
     
    }
  
}

void main() {
  init();
  display();
  query('#ajouter').onClick.listen(ajout);
  query('#annuler').onClick.listen(vider);
}