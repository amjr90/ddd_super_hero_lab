import 'dart:convert';

import 'package:ddd_super_hero_lab/dominio/modelo/super_heroe.dart';
import 'package:ddd_super_hero_lab/dominio/repositorio/i_super_heroe_repositorio.dart';
import 'package:http/http.dart' as http;

class SuperHeroeRepositorioHttp implements ISuperHeroeRepositorio {
  @override
  Future<List<SuperHeroe>> obtenerSuperHeroes() async {
    List<SuperHeroe> superHeroes = [];
    var url = Uri.parse('https://akabab.github.io/superhero-api/api/all.json');
    var response = await http.get(url);

    var json = jsonDecode(response.body);

    superHeroes =
        List<SuperHeroe>.from(json.map((x) => SuperHeroe.fromJson(x)));
    return superHeroes;
  }
}

class SuperHeroeRepositorioFirebase implements ISuperHeroeRepositorio {
  @override
  Future<List<SuperHeroe>> obtenerSuperHeroes() async {
    List<SuperHeroe> superHeroes = [];
    return superHeroes;
  }
}
