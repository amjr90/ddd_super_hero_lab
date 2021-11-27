import 'package:ddd_super_hero_lab/dominio/super_heroe/modelo/super_heroe.dart';
import 'package:ddd_super_hero_lab/presentacion/view/super_heroe_detalle_page.dart';
import 'package:ddd_super_hero_lab/presentacion/view_model/super_heroe_detalle_view_model.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class SuperHeroeCardViewModel {
  final SuperHeroe superHeroe;

  SuperHeroeCardViewModel(this.superHeroe);

  void abrirDetalle() {
    Get.to(() => SuperHeroeDetallePage(
        viewModel: SuperHeroeDetalleViewModel(superHeroe)));
  }
}
