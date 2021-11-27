import 'package:ddd_super_hero_lab/dominio/super_heroe/modelo/super_heroe.dart';
import 'package:ddd_super_hero_lab/dominio/super_heroe/servicio/super_heroe_servicio.dart';
import 'package:get/state_manager.dart';

class SuperHeroesViewModel {
  final SuperHeroeServicio superHeroeServicio;
  RxList<SuperHeroe> superHeores = RxList();
  RxString error = ''.obs;

  SuperHeroesViewModel(this.superHeroeServicio) {
    obtenerSuperHeroes();
  }

  void obtenerSuperHeroes() async {
    try {
      superHeores.value = await superHeroeServicio.obtenerSuperHeores();
    } catch (e) {
      error.value = e.toString();
    }
  }
}
