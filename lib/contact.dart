library contact;

class Contact {
  String name;
  String tel;
  String e_mail;
  String description;

  Contact(this.name, String tel, String e_mail, String description) {
  }

  Contact.fromJson(Map<String, Object> contactMap) {
    name = contactMap['name'];
    name = contactMap['tel'];
    name = contactMap['e_mail'];
    name = contactMap['description'];
  }

  Map<String, Object> toJson() {
    var contactMap = new Map<String, Object>();
    contactMap['name'] = name;
    contactMap['tel'] = name;
    contactMap['e_mail'] = name;
    contactMap['description'] = name;
    
    return contactMap;
  }

  /**
   * Compares two contacts based on their names.
   * If the result is less than 0 then the first contact is less than the second,
   * if it is equal to 0 they are equal and
   * if the result is greater than 0 then the first is greater than the second.
   */
  int compareTo(Contact contact) {
    if (name != null && contact.name != null) {
      return name.compareTo(contact.name);
    } else {
      throw new Exception('a contact name must be present');
    }
  }
}

class Contacts {
  var _list = new List<Contact>();

  Iterator<Contact> get iterator => _list.iterator;
  bool get isEmpty => _list.isEmpty;

  List<Contact> get internalList => _list;
  set internalList(List<Contact> observableList) => _list = observableList;

  bool add(Contact newContact) {
    if (newContact == null) {
      throw new Exception('a new contact must be present');
    }
    for (Contact contact in this) {
      if (newContact.name == contact.name) return false;
    }
    _list.add(newContact);
    return true;
  }

  Contact find(String name) {
    for (Contact contact in _list) {
      if (contact.name == name) return contact;
    }
    return null;
  }

  bool remove(Contact contact) {
    return _list.remove(contact);
  }

  order() {
    _list.sort((m,n) => m.compareTo(n));
  }

}
