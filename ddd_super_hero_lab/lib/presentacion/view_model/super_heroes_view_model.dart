import 'package:ddd_super_hero_lab/dominio/modelo/super_heroe.dart';
import 'package:ddd_super_hero_lab/dominio/servicio/super_heroe_servicio.dart';

class SuperHeroesViewModel {
  final SuperHeroeServicio superHeroeServicio;
  List<SuperHeroe> superHeroes = [];
  SuperHeroesViewModel(this.superHeroeServicio) {
    obtenerSuperHeroes();
  }

  void obtenerSuperHeroes() async {
    superHeroes = await superHeroeServicio.obtenerSuperHeroes();
  }
}
