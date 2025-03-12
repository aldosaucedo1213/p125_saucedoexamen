import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('aldo saucedo listview 22308051281310'),
          backgroundColor: Colors.red,
          titleTextStyle:
              TextStyle(fontSize: 16), // Tamaño de fuente reducido en el AppBar
        ),
        body: ProductList(),
      ),
    );
  }
}

class Productos {
  int id_productos;
  String nombre;
  double precio;

  Productos(
      {required this.id_productos, required this.nombre, required this.precio});
}

class ProductList extends StatelessWidget {
  final List<Map<String, dynamic>> productos = [
    {'id': 1, 'nombre': 'tamal rojo', 'precio': 10.99},
    {'id': 2, 'nombre': 'tamal verde', 'precio': 20.49},
    {'id': 3, 'nombre': 'tamal de mole', 'precio': 15.99},
    {'id': 4, 'nombre': 'tamal oaxaqueño', 'precio': 5.99},
    {'id': 5, 'nombre': 'tamal de chicharron', 'precio': 30.99},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.all(8.0), // Reducido el padding
      itemCount: productos.length,
      separatorBuilder: (context, index) =>
          SizedBox(height: 8.0), // Reducido el SizedBox
      itemBuilder: (context, index) {
        final producto = productos[index];
        return Container(
          decoration: BoxDecoration(
            color: Colors.primaries[index % Colors.primaries.length]
                .withOpacity(0.2),
            borderRadius:
                BorderRadius.circular(8.0), // Reducido el radio del borde
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 4.0, // Reducido el blur radius
                offset: Offset(0, 2), // Reducido el offset
              ),
            ],
          ),
          padding: EdgeInsets.all(8.0), // Reducido el padding
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'ID: ${producto['id']}',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight:
                        FontWeight.bold), // Reducido el tamaño de la fuente
              ),
              SizedBox(height: 4.0), // Reducido el SizedBox
              Text(
                'Nombre: ${producto['nombre']}',
                style:
                    TextStyle(fontSize: 14), // Reducido el tamaño de la fuente
              ),
              SizedBox(height: 4.0), // Reducido el SizedBox
              Text(
                'Precio: \$${producto['precio'].toStringAsFixed(2)}',
                style:
                    TextStyle(fontSize: 14), // Reducido el tamaño de la fuente
              ),
            ],
          ),
        );
      },
    );
  }
}
