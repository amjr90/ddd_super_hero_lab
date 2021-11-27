import 'package:ddd_super_hero_lab/dominio/super_heroe/modelo/super_heroe.dart';
import 'package:ddd_super_hero_lab/dominio/super_heroe/repositorio/i_super_heroe_repositorio.dart';

class SuperHeroeServicio {
  final ISuperHeroeRepositorio superHeroeRepositorio;

  SuperHeroeServicio(this.superHeroeRepositorio);

  Future<List<SuperHeroe>> obtenerSuperHeores() async {
    return await superHeroeRepositorio.obtenerSuperHeores();
  }
}
