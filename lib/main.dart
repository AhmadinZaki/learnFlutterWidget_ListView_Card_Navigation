import 'package:flutter/material.dart';
import 'package:nav_card_list/models/model_anime.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Anime",
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Anime'),
        ),
        body: Container(
          padding: const EdgeInsets.all(10.0),
          child: ListView.builder(
            itemCount: AnimeModel.isiAnime.length,
            itemBuilder: (BuildContext context, int index) {
              return animeCard(AnimeModel.isiAnime[index]);
            },
          ),
        ),
      ),
    );
  }

  Widget animeCard(AnimeModel animeModel) {
    return Card(
      child: Column(
        children: [
          Image.network(animeModel.GambarURL),
          SizedBox(
            height: 10,
          ),
          Text(
            animeModel.namaAnime,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
