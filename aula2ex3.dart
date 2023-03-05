import 'dart:core';
import 'dart:io';

class Aluno {
  late String matricula;
  late String nome;
  late double ira;
  late int anoEntrada;
  late Curso curso;

  Aluno(this.matricula, this.nome, this.ira, this.anoEntrada, this.curso);

  @override
  String toString() {
    return "\nMatricula do aluno: $matricula\n Nome do aluno: $nome\n IRA do aluno: $ira\, Ano de entrada: $anoEntrada\n Curso: $curso\n";
  }

  Map<String, Object> asMap() {
    return {
      '\nmatricula': matricula,
      '\nnome': nome,
      '\nira': ira,
      '\nano de entrada': anoEntrada,
      '\ncurso': curso.asMap()
    };
  }
}

class Curso {
  late String nome;
  late String campus;

  Curso(this.nome, this.campus);

  @override
  String toString() {
    return "\n Nome do curso: $nome\n Nome do campus: $campus\n";
  }

  Map<String, Object> asMap() {
    return {'\nnome': nome, '\nNome do campus': campus};
  }
}

void main() {
  List<Aluno> aluno = [];
  int? opt;

  do {
    print(
        "\n 1- Para cadastrar\n 2- Para buscar por nome\n 3- Para buscar por Matricula\n 4- Para Remover por matricula\n 5- Para listar tudo\n 6- Listar todos com IRA >=6\n 7- Para apagar todos\n 8- Exportar\n 9- Para sair\n");

    opt = int.parse(stdin.readLineSync()!);

    switch (opt) {
      case 1:
        print("Insira a matricula");
        String? matricula = stdin.readLineSync();
        print("Insira o nome");
        String? nome = stdin.readLineSync();
        print("Insira o ira");
        double? ira = double.parse(stdin.readLineSync()!);
        print("Insira o ano");
        int? ano = int.parse(stdin.readLineSync()!);
        print("Insira o nome do curso");
        String? nomeCurso = stdin.readLineSync();
        print("Insira o nome do campus");
        String? nomeCampus = stdin.readLineSync();
        var aluno1 =
            Aluno(matricula!, nome!, ira, ano, Curso(nomeCurso!, nomeCampus!));
        aluno.add(aluno1);
        break;
      case 2:
        print("Insira o nome do aluno que deseja procurar");
        String? nome = stdin.readLineSync();
        print(aluno.where((it) => it.nome == nome).toList().toString());
        break;
      case 3:
        print("Insira a matricula do aluno que deseja procurar");
        String? matricula = stdin.readLineSync();
        print(
            aluno.where((it) => it.matricula == matricula).toList().toString());
        break;
      case 4:
        print("Insira a matricula do aluno que deseja excluir");
        String? matricula = stdin.readLineSync();
        aluno.removeWhere((it) => it.matricula == matricula);
        break;
      case 5:
        print(aluno);
        break;
      case 6:
        print("Alunos com IRA maior que 6\n");
        var alunos =
            aluno.map((it) => it).where((it) => it.ira >= 6.0).toList();
        print(alunos);
        break;
      case 7:
        aluno.clear();
        break;
      case 8:
        var lMapas = List.of(aluno.map((e) => e.asMap()));
        print(lMapas);
        break;
      case 9:
        exit(1);
        break;
    }
  } while (opt != 9);
}
