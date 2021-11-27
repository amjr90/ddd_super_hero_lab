import 'package:ddd_super_hero_lab/dominio/servicio/super_heroe_servicio.dart';
import 'package:ddd_super_hero_lab/infraestructura/super_hereo_repositorio_http.dart';
import 'package:ddd_super_hero_lab/presentacion/view_model/super_heroes_view_model.dart';
import 'package:flutter/material.dart';

class SuperHeroesPage extends StatefulWidget {
  SuperHeroesPage({Key? key}) : super(key: key);

  SuperHeroesViewModel viewModel =
      SuperHeroesViewModel(SuperHeroeServicio(SuperHeroeRepositorioHttp()));

  @override
  _SuperHeroesPageState createState() => _SuperHeroesPageState();
}

class _SuperHeroesPageState extends State<SuperHeroesPage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
