class User {
  final String? name;

  List<String> history = [];

  User({this.name});

  String? get getname => name;

  List<String> get getHistory => history;

  void addHistory(String item) {
    history.add(item);
  }

  void removeHistory(String item) {
    history.remove(item);
  }
}
