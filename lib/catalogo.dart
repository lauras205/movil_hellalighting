import 'package:flutter/material.dart';

class CatalogoProductos extends StatelessWidget {
  const CatalogoProductos({super.key});
  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> productos = [
      {
        "nombre": "Exploradora HELLA Redonda (par)",
        "potencia": "Exploradoras Hella redonda blanca | 500| originales, incluyen soportes,bombillos y tapas",
        "precio": "\$430.000 COP",
        "foto": "https://i.ibb.co/bR7KHmCX/imagen-hella-redonda.png", // URL de la Black Magic
      },
      {
        "nombre": "HELLA FF75 (par)",
        "potencia": "Exploradoras Hella FF75 H7",
        "precio": "\$490.000 COP",
        "foto":
            "https://i.ibb.co/YBm2YMSR/imagen-hella-FF75.png", // URL diferente
      },
      {
        "nombre": "Hella COMET 450 (par) Amarillas",
        "potencia": "Exploradoras Hella redonda blanca | 500| originales, incluyen soportes,bombillos y tapas.",
        "precio": "\$400.000 COP",
        "foto": "https://i.ibb.co/nsc3r91T/IMAGEN-HELLA-COMET-450.png", // URL diferente
      },
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("Catálogo HELLA"),
        backgroundColor: Color(0xFF2E4DB9),
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: EdgeInsets.all(15),
        children: productos.map((prod) {
          return Card(
            margin: EdgeInsets.only(bottom: 12),
            child: ListTile(
              leading: Image(image: NetworkImage(prod["foto"] as String)),
              title: Text(
                prod["nombre"] as String,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text("${prod["potencia"]}\n${prod["precio"]}"),
              isThreeLine: true,
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text(prod["nombre"] as String),
                    content: Text(
                      "¿Deseas ver más detalles de este producto HELLA?",
                    ),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text("Cerrar"),
                      ),
                    ],
                  ),
                );
              },
            ),
          );
        }).toList(),
      ),
    );
  }
}
