// Librerías importadas
import 'package:flutter/material.dart';

// Widget de tarjeta de vídeo
class VideoCard extends StatelessWidget {
  const VideoCard({super.key});

  @override
  Widget build(BuildContext context) {
    // Columna de imagen de usuario, titulo y subtitulo
    return Padding(
        // Espacio entre el borde y el contenido
        padding: const EdgeInsets.all(15.0),
        child: Column(children: [
          // Imagen del vídeo
          Image.asset('assets/images/img2.jpg'),
          // Espacio entre la imagen y el texto
          const SizedBox(
            // Altura del espacio
            height: 5.0,
          ),
          const Row(
            children: [
              // Imagen de usuario
              CircleAvatar(
                // Tamaño de la imagen
                radius: 25,
                // Imagen de fondo
                backgroundImage: AssetImage('assets/images/img1.jpg'),
              ),
              SizedBox(
                width: 15.0,
              ),
              Column(
                // Alinear el texto a la izquierda
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Texto del título y subtitulo
                  Text('Titulo del vídeo',
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold)),
                  Text('Subtitulo del vídeo', style: TextStyle(fontSize: 15.0)),
                ],
              )
            ],
          )
        ]));
  }
}
