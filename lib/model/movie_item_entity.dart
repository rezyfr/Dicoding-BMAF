class MovieItem {
  String title;
  String overview;
  String genre;
  String backdropPath;
  String posterPath;
  bool video;
  bool adult;
  double voteAverage;
  int runtime;
  List<String> profilePath;

  MovieItem({
    required this.title,
    required this.overview,
    required this.genre,
    required this.backdropPath,
    required this.posterPath,
    required this.video,
    required this.adult,
    required this.voteAverage,
    required this.runtime,
    required this.profilePath,
  });
}

var movieList = [
  MovieItem(
    title: "Mortal Kombat",
    overview: "Washed-up MMA fighter Cole Young, unaware of his heritage, and hunted by Emperor Shang Tsung's best warrior, Sub-Zero, seeks out and trains with Earth's greatest champions as he prepares to stand against the enemies of Outworld in a high stakes battle for the universe.",
    genre: "Action",
    backdropPath: "https://image.tmdb.org/t/p/w300/9yBVqNruk6Ykrwc32qrK2TIE5xw.jpg",
    posterPath: "https://image.tmdb.org/t/p/w300/xGuOF1T3WmPsAcQEQJfnG7Ud9f8.jpg",
    video: false,
    adult: false,
    voteAverage: 7.8,
    runtime: 110,
    profilePath: [
      "https://image.tmdb.org/t/p/w300/lv85qMVXtofw7VsM7tKR36V0jAy.jpg",
      "https://image.tmdb.org/t/p/w300/lkW8gh20BuwzHecXqYH1eRVuWpb.jpg",
      "https://image.tmdb.org/t/p/w300/aAfaMEEqD8syHv5bLi5B3sccrM2.jpg",
      "https://image.tmdb.org/t/p/w300/sL0H5my3PAc208n3yu64TO3ug12.jpg",
      "https://image.tmdb.org/t/p/w300/Am9vM77uZd9bGODugwmWtOfzx6E.jpg",
    ]
  ),
  MovieItem(
      title: "Zack Snyder's Justice League",
      overview: "Determined to ensure Superman's ultimate sacrifice was not in vain, Bruce Wayne aligns forces with Diana Prince with plans to recruit a team of metahumans to protect the world from an approaching threat of catastrophic proportions.",
      genre: "Action",
      backdropPath: "https://image.tmdb.org/t/p/w300/pcDc2WJAYGJTTvRSEIpRZwM3Ola.jpg",
      posterPath: "https://image.tmdb.org/t/p/w300/tnAuB8q5vv7Ax9UAEje5Xi4BXik.jpg",
      video: false,
      adult: false,
      voteAverage: 8.5,
      runtime: 242,
      profilePath: [
        "https://image.tmdb.org/t/p/w300/u525jeDOzg9hVdvYfeehTGnw7Aa.jpg",
        "https://image.tmdb.org/t/p/w300/hErUwonrQgY5Y7RfxOfv8Fq11MB.jpg",
        "https://image.tmdb.org/t/p/w300/cIi5pCTdVpD4Hn0OEcJhJeNKYMw.jpg",
        "https://image.tmdb.org/t/p/w300/6dEFBpZH8C8OijsynkSajQT99Pb.jpg",
        "https://image.tmdb.org/t/p/w300/6wmTpbYpmhthaxzM5ss3377F9IV.jpg",
      ]
  ),
  MovieItem(
      title: "Avengers: Endgame",
      overview: "Determined to ensure Superman's ultimate sacrifice was not in vain, Bruce Wayne aligns forces with Diana Prince with plans to recruit a team of metahumans to protect the world from an approaching threat of catastrophic proportions.",
      genre: "Adventure",
      backdropPath: "https://image.tmdb.org/t/p/w300/7RyHsO4yDXtBv1zUU3mTpHeQ0d5.jpg",
      posterPath: "https://image.tmdb.org/t/p/w300/ulzhLuWrPK07P1YkdWQLZnQh1JL.jpg",
      video: false,
      adult: false,
      voteAverage: 8.3,
      runtime: 181,
      profilePath: [
        "https://image.tmdb.org/t/p/w300/5qHNjhtjMD4YWH3UP0rm4tKwxCL.jpg",
        "https://image.tmdb.org/t/p/w300/3bOGNsHlrswhyW79uvIHH1V43JI.jpg",
        "https://image.tmdb.org/t/p/w300/z3dvKqMNDQWk3QLxzumloQVR0pv.jpg",
        "https://image.tmdb.org/t/p/w300/jpurJ9jAcLCYjgHHfYF32m3zJYm.jpg",
        "https://image.tmdb.org/t/p/w300/mODcczqQyKuphfFAoBZGhxgnNfs.jpg",
      ]
  ),
  MovieItem(
      title: "The Wolf of Wall Street",
      overview: "A New York stockbroker refuses to cooperate in a large securities fraud case involving corruption on Wall Street, corporate banking world and mob infiltration. Based on Jordan Belfort's autobiography.",
      genre: "Crime",
      backdropPath: "https://image.tmdb.org/t/p/w300/cWUOv3H7YFwvKeaQhoAQTLLpo9Z.jpg",
      posterPath: "https://image.tmdb.org/t/p/w300/sOxr33wnRuKazR9ClHek73T8qnK.jpg",
      video: false,
      adult: false,
      voteAverage: 8,
      runtime: 180,
      profilePath: [
        "https://image.tmdb.org/t/p/w300/wo2hJpn04vbtmh0B9utCFdsQhxM.jpg",
        "https://image.tmdb.org/t/p/w300/cymlWttB83MsAGR2EkTgANtjeRH.jpg",
        "https://image.tmdb.org/t/p/w300/euDPyqLnuwaWMHajcU3oZ9uZezR.jpg",
        "https://image.tmdb.org/t/p/w300/axu2DtYr0W0QUcQUqylzYgIU7hB.jpg",
        "https://image.tmdb.org/t/p/w300/12ycW6JwP51RJA36mbT7ietI4Ce.jpg",
      ]
  ),
  MovieItem(
      title: "A Star Is Born",
      overview: "Seasoned musician Jackson Maine discovers — and falls in love with — struggling artist Ally. She has just about given up on her dream to make it big as a singer — until Jack coaxes her into the spotlight. But even as Ally's career takes off, the personal side of their relationship is breaking down, as Jack fights an ongoing battle with his own internal demons.",
      genre: "Drama",
      backdropPath: "https://image.tmdb.org/t/p/w300/mnDvPokXpvsdPcWSjNRPhiiLOKu.jpg",
      posterPath: "https://image.tmdb.org/t/p/w300/wrFpXMNBRj2PBiN4Z5kix51XaIZ.jpg",
      video: false,
      adult: false,
      voteAverage: 7.5,
      runtime: 136,
      profilePath: [
        "https://image.tmdb.org/t/p/w300/DPnessSsWqVXRbKm93PtMjB4Us.jpg",
        "https://image.tmdb.org/t/p/w300/asB6CImOsNGA5i9HHt2FFCtP2QJ.jpg",
        "https://image.tmdb.org/t/p/w300/1K2IvGXFbKsgkExuUsRvy4F0c9e.jpg",
        "https://image.tmdb.org/t/p/w300/kq6APbPUbx0Mzoh6mK7k8Xoiw5m.jpg",
        "https://image.tmdb.org/t/p/w300/avCWoO9fLwEhbT6cvu0TJcSj49g.jpg",
      ]
  ),
  MovieItem(
      title: "Interstellar",
      overview:  "The adventures of a group of explorers who make use of a newly discovered wormhole to surpass the limitations on human space travel and conquer the vast distances involved in an interstellar voyage.",
      genre: "Adventure",
      backdropPath: "https://image.tmdb.org/t/p/w300/xJHokMbljvjADYdit5fK5VQsXEG.jpg",
      posterPath: "https://image.tmdb.org/t/p/w300/gEU2QniE6E77NI6lCU6MxlNBvIx.jpg",
      video: false,
      adult: false,
      voteAverage: 8.3,
      runtime: 169,
      profilePath: [
        "https://image.tmdb.org/t/p/w300/wJiGedOCZhwMx9DezY8uwbNxmAY.jpg",
        "https://image.tmdb.org/t/p/w300/tLelKoPNiyJCSEtQTz1FGv4TLGc.jpg",
        "https://image.tmdb.org/t/p/w300/klNx4UqkcE9u7P3vsg20AKwgplw.jpg",
        "https://image.tmdb.org/t/p/w300/lzRsKNAo5LuqvcroaD2FuOmk0T3.jpg",
        "https://image.tmdb.org/t/p/w300/6n8yZKJ3YHkm4Ds3zNjJpankHUk.jpg",
      ]
  ),
  MovieItem(
      title: "Ocean's Twelve",
      overview: "Danny Ocean reunites with his old flame and the rest of his merry band of thieves in carrying out three huge heists in Rome, Paris and Amsterdam – but a Europol agent is hot on their heels.",
      genre: "Crime",
      backdropPath: "https://image.tmdb.org/t/p/w300/5b5HrewiViLWEdMR4dmbd7ajQ8Q.jpg",
      posterPath: "https://image.tmdb.org/t/p/w300/4y8WH1lIpXp0qxUWkYmObhuMRIU.jpg",
      video: false,
      adult: false,
      voteAverage: 6.5,
      runtime: 125,
      profilePath: [
        "https://image.tmdb.org/t/p/w300/kHiVY6r1k6juXrNetAYk2jILqn9.jpg",
        "https://image.tmdb.org/t/p/w300/oTB9vGIBacH5aQNS0pUM74QSWuf.jpg",
        "https://image.tmdb.org/t/p/w300/cQanDcd6nNz2hIlJRib126feqZE.jpg",
        "https://image.tmdb.org/t/p/w300/9VE0zNIs11aD9BHCKiGAZEIE5c8.jpg",
        "https://image.tmdb.org/t/p/w300/4XvEI2AgZ7bNOy1z2Nx8LcwLnTM.jpg",
      ]
  )
];
