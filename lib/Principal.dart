import 'package:flutter/material.dart';

import 'menu_principal.dart';

class Principal extends StatelessWidget {
  const Principal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "HELLALIGHTING",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("HELLALIGHTING"),
          backgroundColor: Colors.indigo,
          foregroundColor: Colors.white,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Hellalighting es una aplicacion móvil desarrollada para la comercializacion y consulta de exploradoras y sistemas de iluminacion de la marca HELLA.",
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  "Su función principal es permitir al usuario visualizar el catalogo de productos originales, conocer sus caracteristicas técnicas, precios y disonibilidad.",
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  "la app busca solucionar la venta de productos imitaciones y facilitar la compra a los usuarios de Colombia , ofreciendo informacion clara y contacto directo para la compra.",
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: Center(
                  child: CircleAvatar(
                    radius: 100.0,
                    backgroundImage: NetworkImage(
                      "https://i.ibb.co/RGRybcxr/compressed.png",
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: Builder(
          builder: (innerContext) {
            return FloatingActionButton(
              onPressed: () {
                Navigator.push(
                  innerContext, // <-- usa innerContext, no context
                  MaterialPageRoute(
                    builder: (context) => const MenuPrincipal(),
                  ),
                );
              },
              backgroundColor: const Color(0xFF2E4DB9),
              child: const Icon(
                Icons.arrow_circle_right_outlined,
                size: 40.0,
                color: Colors.white,
              ),
            );
          },
        ),
      ),
    );
  }
}
