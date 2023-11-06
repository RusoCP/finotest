import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import '../widgets/carousel_widget.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Planes Reales'),
        actions: [
          IconButton(
            icon: const Icon(Icons.local_offer),
            onPressed: () {
              // Aquí puedes manejar lo que sucede cuando se presiona el botón "Marcas"
            },
          ),
          IconButton(
            icon: const Icon(Icons.subscriptions),
            onPressed: () {
              // Aquí puedes manejar lo que sucede cuando se presiona el botón "Suscribirte"
            },
          ),
          IconButton(
            icon: const Icon(Icons.school),
            onPressed: () {
              // Aquí puedes manejar lo que sucede cuando se presiona el botón "Tutoriales"
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Menú'),
            ),
            ListTile(
              title: const Text('Porqué confiar en nosotros'),
              onTap: () {
                // Aquí puedes manejar lo que sucede cuando se presiona esta opción
              },
            ),
            ListTile(
              title: const Text('Mi Plan'),
              onTap: () {
                // Aquí puedes manejar lo que sucede cuando se presiona esta opción
              },
            ),
            ListTile(
              title: const Text('Marcas'),
              onTap: () {
                // Aquí puedes manejar lo que sucede cuando se presiona esta opción
              },
            ),
            ListTile(
              title: const Text('Planes'),
              onTap: () {
                // Aquí puedes manejar lo que sucede cuando se presiona esta opción
              },
            ),
            ListTile(
              title: const Text('Vehículos'),
              onTap: () {
                // Aquí puedes manejar lo que sucede cuando se presiona esta opción
              },
            ),
            ListTile(
              title: const Text('Legales'),
              onTap: () {
                // Aquí puedes manejar lo que sucede cuando se presiona esta opción
              },
            ),
            ListTile(
              title: const Text('Ayuda'),
              onTap: () {
                // Aquí puedes manejar lo que sucede cuando se presiona esta opción
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CarouselWidget(),
            Image.asset('/images/AutoahorroVW.png'),
            YoutubePlayer(
              controller: _controller,
              showVideoProgressIndicator: true,
              onReady: () {
                // Opcional: puedes realizar acciones cuando el video esté listo para reproducirse
              },
            ),
          ],
        ),
      ),
    );
  }

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'pIAnAI_hNHA', // ID de tu video de YouTube
    flags: const YoutubePlayerFlags(
      autoPlay: true,
      mute: false,
    ),
  );
}
