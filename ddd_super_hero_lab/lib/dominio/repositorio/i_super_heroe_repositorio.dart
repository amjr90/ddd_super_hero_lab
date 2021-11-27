import 'package:ddd_super_hero_lab/dominio/modelo/super_heroe.dart';

abstract class ISuperHeroeRepositorio {
  Future<List<SuperHeroe>> obtenerSuperHeroes();
}
