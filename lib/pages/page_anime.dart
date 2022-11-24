import 'package:flutter/material.dart';
import 'package:nav_card_list/models/model_anime.dart';

class PageAnime extends StatefulWidget {
  final AnimeModel pageAnimeModel;
  const PageAnime({super.key, required this.pageAnimeModel});

  @override
  State<PageAnime> createState() => _PageAnimeState();
}

class _PageAnimeState extends State<PageAnime> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Halaman Detail"),
        ),
        body: Column(
          children: [
            Image.network(widget.pageAnimeModel.GambarURL),
            SizedBox(
              height: 10,
            ),
            Text(
              widget.pageAnimeModel.namaAnime,
              style: TextStyle(fontSize: 20),
            ),
            Padding(
                padding: EdgeInsets.all(15),
                child: Text(widget.pageAnimeModel.alamatURL)),
            ElevatedButton(
                onPressed: Navigator.of(context).pop, child: Text("back"))
          ],
        ),
      ),
    );
  }
}
