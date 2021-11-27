import 'package:ddd_super_hero_lab/dominio/super_heroe/servicio/super_heroe_servicio.dart';
import 'package:ddd_super_hero_lab/infraestructura/super_heroe/super_heroe_repositorio_http.dart';
import 'package:ddd_super_hero_lab/presentacion/view_model/super_heroes_view_model.dart';
import 'package:ddd_super_hero_lab/presentacion/widgets/SuperHeroCard/super_heroe_card.dart';
import 'package:ddd_super_hero_lab/presentacion/widgets/SuperHeroCard/super_heroe_card_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class SuperHeroesPage extends StatefulWidget {
  SuperHeroesPage({Key? key}) : super(key: key) {
    _viewModel.obtenerSuperHeroes();
  }

  final SuperHeroesViewModel _viewModel =
      SuperHeroesViewModel(SuperHeroeServicio(SuperHeroeRepositorioHttp()));
  final String _appBarTitle = "Super Heroes";
  final double _gridViewPadding = 0.0;
  final int _crossAxisCount = 2;
  final double _childViewAspectRatio = 0.7;

  @override
  _SuperHeroesPageState createState() => _SuperHeroesPageState();
}

class _SuperHeroesPageState extends State<SuperHeroesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(widget._appBarTitle),
      ),
      body: Stack(
        children: [
          Obx(
            () => GridView.builder(
              padding: EdgeInsets.all(widget._gridViewPadding),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: widget._crossAxisCount,
                childAspectRatio: (widget._childViewAspectRatio),
              ),
              itemCount: widget._viewModel.superHeores.length,
              itemBuilder: (BuildContext context, int index) {
                return SuperHeroeCard(
                  viewModel: SuperHeroeCardViewModel(
                      widget._viewModel.superHeores[index]),
                );
              },
            ),
          ),
          Obx(
            () => Visibility(
              visible: widget._viewModel.error.isEmpty ? false : true,
              child: Center(
                child: Text(widget._viewModel.error.value),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
