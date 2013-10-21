part of contact;

var contacts = new List();

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
  contact3.description = "Domain model framework";
  contacts.add(contact3);
  var contact4 = new Contact();
  contact4.name = "Fox DESCHAMPS";
  contact4.tel = "418 655 2475";
  contact4.e_mail = "fox.dps@love.com/";
  contact4.description = "Web programming language";
  contacts.add(contact4);
}

class Contact {
  var name, tel, e_mail, description;
}
