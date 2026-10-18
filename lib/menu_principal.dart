import 'package:flutter/material.dart';

import 'catalogo.dart';

class MenuPrincipal extends StatelessWidget {
  const MenuPrincipal({super.key});
  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> opciones = [
      {
        "icono": Icons.lightbulb,
        "titulo": "Catálogo de Productos",
        "sub": "Exploradoras HELLA",
      },
      {
        "icono": Icons.verified_user,
        "titulo": "Original vs Imitación",
        "sub": "Verifica tu producto",
      },
      {
        "icono": Icons.price_check,
        "titulo": "Precios y Disponibilidad",
        "sub": "Stock en Colombia",
      },
      {
        "icono": Icons.contact_support,
        "titulo": "Contacto Directo",
        "sub": "WhatsApp para compra",
      },
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("HELLALIGHTING"),
        backgroundColor: Color(0xFF2E4DB9),
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: EdgeInsets.all(15),
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Menú Principal",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 10),
          ...opciones.map((item) {
            return Card(
              margin: EdgeInsets.only(bottom: 12),
              child: ListTile(
                leading: Icon(
                  item["icono"] as IconData,
                  color: Color(0xFF2E4DB9),
                  size: 35,
                ),
                title: Text(item["titulo"] as String),
                subtitle: Text(item["sub"] as String),
                trailing: Icon(Icons.arrow_forward_ios, size: 16),
                onTap: () {
                  if (item["titulo"] == "Catálogo de Productos") {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CatalogoProductos(),
                      ),
                    );
                  } else {
                    print("Tocaste ${item["titulo"]}");
                  }
                },
              ),
            );
          }).toList(),
        ],
      ),
    );
  }
}
