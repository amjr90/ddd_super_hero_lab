import 'package:cached_network_image/cached_network_image.dart';
import 'package:ddd_super_hero_lab/presentacion/widgets/SuperHeroCard/super_heroe_card_view_model.dart';
import 'package:flutter/material.dart';

class SuperHeroeCard extends StatelessWidget {
  const SuperHeroeCard({
    Key? key,
    required this.viewModel,
  }) : super(key: key);
  final SuperHeroeCardViewModel viewModel;
  final double _fontSize = 22;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        viewModel.abrirDetalle();
      },
      child: Card(
        elevation: 4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 70,
              child: CachedNetworkImage(
                  fit: BoxFit.cover,
                  imageUrl: viewModel.superHeroe.images?.lg ?? ""),
            ),
            Expanded(
                flex: 2,
                child: Container(
                  color: Colors.red,
                )),
            Expanded(
              flex: 28,
              child: Container(
                color: Colors.black,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    viewModel.superHeroe.name ?? "",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: _fontSize,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
