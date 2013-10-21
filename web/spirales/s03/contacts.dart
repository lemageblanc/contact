
part of contact;



Contacts contacts = new Contacts();

init() {
  
  var contact1 = new Contact();
  contact1.name = "Jean-Pierre ASSO";
  contact1.tel = "418 655 4675";
  contact1.e_mail = "j_pierre@yahoo.ca";
  contact1.description = "Gestionnaire Approvisionneur";
  contacts.add(contact1);
  var contact2 = new Contact();
  contact2.name = "Didier LAURENT";
  contact2.tel = "418 655 6775";
  contact2.e_mail = "laurent.didier@gmail.com";
  contact2.description = "Développeur de logiciel";
  contacts.add(contact2);
  
  var contact3 = new Contact();
  contact3.name = "Patick LABERGE";
  contact3.tel = "418 655 7875";
  contact3.e_mail = "patrickl@hotmail.com";
  contact3.description = "Docteur vétérinaire";
  contacts.add(contact3);
  var contact4 = new Contact();
  contact4.name = "Fox DESCHAMPS";
  contact4.tel = "418 655 2475";
  contact4.e_mail = "fox.dps@love.com";
  contact4.description = "Artiste plasticien";
  contacts.add(contact4);
}

class Contact extends ConceptEntity<Contact>{
  
  
  var _name, tel, e_mail, description;
  String get name => _name;
  set name(String name) {
    _name = name;
    if (code == null) {
      code = name;
    }
  }

  Contact newEntity() => new Contact();

}


class Contacts extends ConceptEntities<Contact> {

  Contacts newEntities() => new Contacts();
  Contact newEntity() => new Contact();
  
}
ajout(MouseEvent event) {
  
  Contact contact = new Contact();
  InputElement name = query("#name");
  InputElement tel = query("#tel");
  InputElement e_mail = query("#e_mail");
  InputElement description = query("#description");
  var error = false;
  if (name.value.trim() == '' || tel.value.trim() == '') error = true;
  else{
    contact.name = name.value;
    contact.tel = tel.value;
    contact.e_mail = e_mail.value;
    contact.description = description.value;
   
    contacts.add(contact);
    
    display(); // Mise à jour de l'affichage
    }
}


modifier(MouseEvent event){
  var BoutonModif = (event.target as ButtonElement).title;
  var contact = contacts.find(BoutonModif);
  InputElement name = query("#name");
  InputElement tel = query("#tel");
  InputElement e_mail = query("#e_mail");
  InputElement description = query("#description");
  name.value = contact.name;
  tel.value = contact.tel;
  e_mail.value = contact.e_mail;
  description.value = contact.description;
  contacts.remove(contact);
}

vider(MouseEvent event){
  InputElement name = query("#name");
  InputElement tel = query("#tel");
  InputElement e_mail = query("#e_mail");
  InputElement description = query("#description");
  name.value ="";
  tel.value ="";
  e_mail.value ="";
  description.value ="";
}
supprimer(MouseEvent event) {
 var BoutonSupp = (event.target as ButtonElement).title;
 var contact = contacts.find(BoutonSupp);
 contacts.remove(contact);
 
 display(); // Mise à jour de l'affichage
}



save() {
//window.localStorage['contacts'] = JSON.encode(Model.one.toJson());
}
