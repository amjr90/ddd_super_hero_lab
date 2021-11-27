import 'package:ddd_super_hero_lab/dominio/super_heroe/modelo/super_heroe.dart';

abstract class ISuperHeroeRepositorio {
  Future<List<SuperHeroe>> obtenerSuperHeores();
}
