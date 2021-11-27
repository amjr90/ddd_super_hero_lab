import 'package:ddd_super_hero_lab/dominio/modelo/super_heroe.dart';
import 'package:ddd_super_hero_lab/dominio/repositorio/i_super_heroe_repositorio.dart';

class SuperHeroeServicio {
  final ISuperHeroeRepositorio superHeroeRepositorio;

  SuperHeroeServicio(this.superHeroeRepositorio);

  Future<List<SuperHeroe>> obtenerSuperHeroes() {
    return superHeroeRepositorio.obtenerSuperHeroes();
  }
}
