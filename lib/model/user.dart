import 'dart:convert';


class User {
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

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      nome: map['nome'] ?? '',
      idade: map['idade']?.toInt() ?? 0,
      ativo: map['ativo'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));
}
