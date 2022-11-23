class AnimeModel {
  String namaAnime;
  String alamatURL;
  String GambarURL;

  AnimeModel(this.namaAnime, this.alamatURL, this.GambarURL);

  static List<AnimeModel> isiAnime = [
    AnimeModel(
        "Chainsaw Man",
        "https://animekompi.net/chainsaw-man-episode-07-subtitle-indonesia/",
        "https://i1.wp.com/animekompi.net/wp-content/uploads/2022/10/126216l.jpg?resize=247,350"),
    AnimeModel(
        "Bleach",
        "https://animekompi.net/bleach-episode-373-subtitle-indonesia/",
        "https://i2.wp.com/animekompi.net/wp-content/uploads/2022/10/126621l.jpg?resize=247,350"),
  ];
}
