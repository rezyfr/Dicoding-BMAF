import 'package:flutter/material.dart';
import 'package:discover_movie/model/movie_item_entity.dart';

class DetailScreen extends StatelessWidget {
  final MovieItem movie;

  DetailScreen(this.movie);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            FittedBox(
              child: Stack(
                children: [
                  ShaderMask(
                      shaderCallback: (rect) {
                        return LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.black, Colors.transparent],
                        ).createShader(
                            Rect.fromLTRB(0, 0, rect.width, rect.height));
                      },
                      blendMode: BlendMode.dstIn,
                      child: Image.network(movie.posterPath)),
                  SafeArea(
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: SafeArea(
                          child: Text(
                            "${durationToString(movie.runtime)}",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              fit: BoxFit.fill,
            )
          ],
        ),
      ),
    );
  }
}

String durationToString(int minutes) {
  var d = Duration(minutes:minutes);
  List<String> parts = d.toString().split(':');
  return '${parts[0]}h ${parts[1]}m';
}
