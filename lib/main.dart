import 'package:flutter/material.dart';
import 'package:nav_card_list/models/model_anime.dart';
import 'package:nav_card_list/pages/page_anime.dart';

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
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return PageAnime(
                            pageAnimeModel: AnimeModel.isiAnime[index]);
                      },
                    ),
                  );
                },
                child: animeCard(AnimeModel.isiAnime[index]),
              );
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
          const SizedBox(
            height: 10,
          ),
          Text(
            animeModel.namaAnime,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
