import 'package:flutter/material.dart';
import 'package:one_app_flutter/widgets/video_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Este widget es la raíz de la aplicación.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyWidget(),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // Columna de tarjetas de vídeo
    return Scaffold(
        // Barra de navegación
        appBar: AppBar(
          // Título de la barra
          title: const Text('YouTube'),
          // Color texto de la barra
          foregroundColor: Colors.white,
          // Color de fondo de la barra
          backgroundColor: Colors.red,
          // Iconos de la barra
          actions: const [
            // Icono de cuenta
            Icon(Icons.account_circle, size: 24.0),
            // Espacio entre iconos
            SizedBox(width: 12.0),
            // Icono de búsqueda
            Icon(Icons.search),
            // Espacio entre iconos
            SizedBox(width: 12.0),
            // Icono de más opciones
            Icon(Icons.more_vert),
          ],
        ),
        // Cuerpo de la aplicación
        body: const SingleChildScrollView( // SingleChildScrollView para que se pueda hacer scroll
            child: Column(
          children: [
            // Tarjeta de vídeo
            VideoCard(),
            VideoCard(),
            VideoCard(),
            VideoCard(),
          ],
        )));
  }
}
