import 'package:cached_network_image/cached_network_image.dart';
import 'package:ddd_super_hero_lab/presentacion/view_model/super_heroe_detalle_view_model.dart';
import 'package:flutter/material.dart';

class SuperHeroeDetallePage extends StatefulWidget {
  const SuperHeroeDetallePage({Key? key, required this.viewModel})
      : super(key: key);

  final SuperHeroeDetalleViewModel viewModel;

  @override
  _SuperHeroeDetallePageState createState() => _SuperHeroeDetallePageState();
}

class _SuperHeroeDetallePageState extends State<SuperHeroeDetallePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 50,
            child: CachedNetworkImage(
                fit: BoxFit.cover,
                imageUrl: widget.viewModel.superHeroe.images?.lg ?? ""),
          ),
          Expanded(
            flex: 50,
            child: Container(
              color: Colors.black,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        widget.viewModel.superHeroe.name ?? "",
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Altura: ${widget.viewModel.superHeroe.appearance!.height}',
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.normal),
                      ),
                      Text(
                        'Raza: ${widget.viewModel.superHeroe.appearance!.race}',
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.normal),
                      ),
                      Text(
                        'Empresa: ${widget.viewModel.superHeroe.biography!.publisher}',
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
