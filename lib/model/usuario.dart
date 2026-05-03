import 'dart:convert';

class Usuario {
  final String nome;
  final int idade;
  final bool ativo;
  Usuario({
    required this.nome,
    required this.idade,
    required this.ativo,
  });
 
  @override
  String toString() => 'Usuario(nome: $nome, idade: $idade, ativo: $ativo)';

  Map<String, dynamic> toMap() {
    return {
      'nome': nome,
      'idade': idade,
      'ativo': ativo,
    };
  }

  factory Usuario.fromMap(Map<String, dynamic> map) {
    return Usuario(
      nome: map['nome'] ?? '',
      idade: map['idade']?.toInt() ?? 0,
      ativo: map['ativo'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory Usuario.fromJson(String source) => Usuario.fromMap(json.decode(source));
}
