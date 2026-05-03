import 'dart:convert';

import 'package:poo/model/usuario.dart';

/*class User {
  final String nome;
  final int idade;
  final bool ativo;

  User({
    required this.nome,
    required this.idade,
    required this.ativo,
  });

  @override
  String toString() => 'User(nome: $nome, idade: $idade, ativo: $ativo)';
  
  Map<String, dynamic> toMap() {
    return {
      'nome': nome,
      'idade': idade,
      'ativo': ativo,
    };
  }
}

void main() {
  // Resposta JSON de uma API
  String response = '{"nome":"Carlos","idade":45,"ativo":true}';
  print('JSON RESPONSE => $response');
  print('');

  //Primeira conversão -> Json String para Mapa Dart
  var map = jsonDecode(response);
  print('CONVERTIDO JSON PARA MAP =>  $map');
  print(map['nome']);
  print(map['idade']);
  print(map['ativo']);
  print('');

  //Segunda conversão -> Map para Objeto
  User user = User(
    nome: map['nome'],
    idade: map['idade'],
    ativo: map['ativo'],
  );

  print('CONVERTIDO MAP PARA USER =>: $user');
  print(user.nome);
  print(user.idade);
  print(user.ativo);
  print('');

  //Agora o caminho inverso
  //Primeira conversão -> Objeto para Map
  var mapUser = user.toMap();
  print('CONVERTIDO DE USER PARA MAP =>: $mapUser');
  print(map['nome']);
  print(map['idade']);
  print(map['ativo']);
  print('');

  //SEGUNDA conversão -> Map para JSON
  var json = jsonEncode(mapUser);
  print('JSON FINAL =>: $json'); 

} */

// COM MODELO
void main() {
  String response = '{"nome":"Carlos","idade":45,"ativo":true}';
  var u = Usuario.fromJson(response);
  print('Json para usuário: $u');

  var j = u.toJson();
  print('Usuário para Json: $j');

  String responseList = '''
  [
    {"nome":"Carlos","idade":30,"ativo":true},
    {"nome":"Ana","idade":25,"ativo":false}
  ]
  ''';

  // Lista de Usuários
  List lista = jsonDecode(responseList);

  List<Usuario> usuarios =
      lista.map((e) => Usuario.fromMap(e)).toList();

  print(usuarios);
  print(usuarios[0]);
  print(usuarios[1].nome);
}