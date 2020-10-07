class Cliente {
  final int id;
  final String nome;
  final String email;
  final String cpf;
  final String senha;
  final bool confirmado;
  final int idMesa;

  Cliente({this.id, this.nome, this.email, this.cpf, this.senha, this.confirmado, this.idMesa});

  factory Cliente.fromJson(Map<String, dynamic> json){
    return Cliente(
      id: json['id_cliente'] as int,
      nome: json['nome_cliente'] as String,
      email: json['email_cliente'] as String,
      cpf: json['cpf_cliente'] as String,
      senha: json['senha_cliente'] as String,
      confirmado: json['confirmado_cliente'] as bool,
      idMesa: json['cliente_id_mesa'] as int,
    );
  }
}