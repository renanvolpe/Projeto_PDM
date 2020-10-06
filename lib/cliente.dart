class Cliente {
  int id;
  String nome;
  String email;
  String cpf;
  String senha;
  bool confirmado;
  int idMesa;

  Cliente({this.id, this.nome, this.email, this.cpf, this.senha, this.confirmado, this.idMesa});

  factory Cliente.fromJson(Map<String, dynamic> json){
    return Cliente(
      id: json['id'] as int,
      nome: json['nome'] as String,
      email: json['nome'] as String,
      cpf: json['nome'] as String,
      senha: json['nome'] as String,
      confirmado: json['nome'] as bool,
      idMesa: json['nome'] as int,
    );
  }
}