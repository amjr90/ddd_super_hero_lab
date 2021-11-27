import 'dart:convert';

import 'package:ddd_super_hero_lab/dominio/super_heroe/modelo/super_heroe.dart';
import 'package:ddd_super_hero_lab/dominio/super_heroe/repositorio/i_super_heroe_repositorio.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SuperHeroeRepositorioHttp implements ISuperHeroeRepositorio {
  @override
  Future<List<SuperHeroe>> obtenerSuperHeores() async {
    List<SuperHeroe> superHeroes = <SuperHeroe>[];
    var url = Uri.parse('https://akabab.github.io/superhero-api/api/all.json');
    var response = await http.get(url);
    try {
      var json = jsonDecode(response.body);

      superHeroes =
          List<SuperHeroe>.from(json.map((x) => SuperHeroe.fromJson(x)));
    } catch (e) {
      throw (ErrorDescription(e.toString()));
    }

    return superHeroes;
  }
}
