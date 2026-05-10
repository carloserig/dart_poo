import 'package:poo/model/user.dart';

void main() {
  String response = '{"nome": "Carlos", "idade": 45, "ativo": true}';
  var u = User.fromJson(response);
  print(u);

  var j = u.toJson();
  print(j);
}

/*import 'dart:convert';

class User {
  final String nome;
  final int idade;
  final bool ativo;
  
  User({
    required this.nome,
    required this.idade,
    required this.ativo,
  });

  Map<String, dynamic> toMap() {
    return {
      "nome": nome,
      "idade": idade,
      "ativo": ativo
    };
  }

  @override
  String toString() => 'User(nome: $nome, idade: $idade, ativo: $ativo)';
}
void main() {
  String response = '{"nome": "Carlos", "idade": 45, "ativo": true}';
  print('json: $response');
  //Primeiro passo, transformar Json em um mapa
  var map = jsonDecode(response);
  print('Map: $map');
  print(map['nome']);
  print(map['idade']);
  print(map['ativo']);

  var user = User(nome: map['nome'], idade: map['idade'], ativo: map['ativo']);
  print('Usuário: $user');

  print('- - - Caminho inverso - - -');

  var mapUser = user.toMap();
  print(mapUser);
  //print('Map: $map');
  //print(map['nome']);
  //print(map['idade']);
  //print(map['ativo']);

  var json = jsonEncode(mapUser);
  print(json);
}*/

