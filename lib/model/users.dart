class User {
  late final int id;
  late final String _username;
  late final String _email;
  late final String _password;
  late final String _flaglogged;

  User(this.id, this._username, this._email, this._password, this._flaglogged);

  User.map(dynamic obj) {
    id = obj['id'];
    _username = obj['username'];
    _email = obj['email'];
    _password = obj['password'];
    _flaglogged = obj['password'];
  }

  String get username => _username;
  String get email => _email;
  String get password => _password;
  String get flaglogged => _flaglogged;

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    map["id"] = DateTime.now().millisecond;
    map["username"] = _username;
    map["email"] = _email;
    map["password"] = _password;
    map["flaglogged"] = _flaglogged;
    return map;
  }
}
