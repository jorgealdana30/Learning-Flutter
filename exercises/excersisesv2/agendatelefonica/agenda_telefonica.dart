final Map<String, dynamic> contacts = {
  "Jorge Aldana" : {"Telefono": 3106659495, "Direccion": "Carrera 6E #98C 40", "Correo": "jorgeelieceraldana.92@gmail.com"}
};

void main() {
  final Smartphone smartphone = Smartphone(contacts: contacts);
  smartphone.addContact({"Maria Velasquez": {"Telefono": 3006654071, "Direccion": "Carrera 6E 2 #91 58", "Correo": "mafegarciafv@gmail.com"}});
  smartphone.showAllContacts();
  print(smartphone.searchContact("Jorge Aldana"));
}

abstract class Agenda {
  Map<String, dynamic> contacts;

  Agenda({required this.contacts});

  void addContact(Map<String, dynamic> infoContact);

  bool deleteContact(String key);

  MapEntry<String, dynamic> searchContact(String key);

  void showAllContacts();

  void exportToCSVFile();
}

class Smartphone extends Agenda {
  Smartphone({required super.contacts});

  @override
  void addContact(Map<String, dynamic> infoContact) {
    this.contacts.addAll(infoContact);
  }

  @override
  bool deleteContact(String key) {
    return this.contacts.remove(key) != null;
  }

  @override
  void exportToCSVFile() {}

  @override
  MapEntry<String, dynamic> searchContact(String key) {
    return this.contacts.entries.singleWhere((element) => element.key == key);
  }

  @override
  void showAllContacts() {
    this.contacts.forEach((key, value) {
      print("Nombre: $key; Información: $value");
    });
  }
}
