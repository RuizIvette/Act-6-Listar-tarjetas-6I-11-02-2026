import 'package:flutter/material.dart';

void main() => runApp(const AppJugueteria());

class AppJugueteria extends StatelessWidget {
  const AppJugueteria({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LosJuguetes(),
    );
  }
} //fin clase AppJuguetería

class LosJuguetes extends StatelessWidget {
  const LosJuguetes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Juguetería Ivette",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 191, 131, 219),
        leading: const Icon(Icons.toys, color: Colors.white),
        actions: const [
          Icon(Icons.face, color: Colors.white),
          Icon(Icons.directions_car, color: Colors.white),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Icon(Icons.park, color: Colors.white),
          ),
        ],
      ),
      // --- CUERPO DE LA APP ---
      body: ListView(
        children: [
          _crearTarjeta(
            "Muñeca de Trapo",
            "Colección Primavera",
            "https://github.com/RuizIvette/imagenes-para-flutter-6-I-fecha-11feb-26/blob/main/jugueteria1.jpg?raw=true",
          ),
          _crearTarjeta(
            "Carrito de Madera",
            "Material sustentable",
            "https://github.com/RuizIvette/imagenes-para-flutter-6-I-fecha-11feb-26/blob/main/jugueteria2.png?raw=true",
          ),
          _crearTarjeta(
            "Oso de Felpa",
            "Suave y lavable",
            "https://github.com/RuizIvette/imagenes-para-flutter-6-I-fecha-11feb-26/blob/main/jugueteria3.png?raw=true",
          ),
          _crearTarjeta(
            "Bloques de Construcción",
            "Set de 50 piezas",
            "https://github.com/RuizIvette/imagenes-para-flutter-6-I-fecha-11feb-26/blob/main/jugueteri4.png?raw=true",
          ),
        ],
      ),
    ); //fin scaffold
  }

  // --- Widget personalizado para las tarjetas ---
  Widget _crearTarjeta(String titulo, String subtitulo, String urlImagen) {
    return Card(
      color: Colors.white,
      elevation: 5,
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(urlImagen),
        ),
        title: Text(
          titulo,
          style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          subtitulo,
          style: const TextStyle(color: Colors.black54),
        ),
        trailing: const Icon(
          Icons.favorite,
          color: Colors.purple,
        ),
      ),
    );
  }
} //fin clase LosJuguetes