import 'package:discover_movie/detail_screen.dart';
import 'package:flutter/material.dart';

// ignore: import_of_legacy_library_into_null_safe
import 'package:carousel_slider/carousel_slider.dart';
import 'model/movie_item_entity.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Text(
                  "Discover Movies",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Carousel(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Carousel extends StatefulWidget {
  @override
  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  var movies = movieList;
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        options: CarouselOptions(
          height: 650,
          initialPage: 0,
          enlargeCenterPage: true,
          autoPlay: false,
          reverse: false,
          enableInfiniteScroll: true,
          autoPlayInterval: Duration(seconds: 2),
          autoPlayAnimationDuration: Duration(milliseconds: 2000),
          pauseAutoPlayOnTouch: true,
          viewportFraction: 0.75,
          scrollDirection: Axis.horizontal,
          onPageChanged: (index, reason) {
            setState(() {
              _current = index;
            });
          },
        ),
        items: movies.mapIndexed((movie, index) {
          return Builder(builder: (BuildContext context) {
            return InkWell(
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        height: 450,
                        width: 300,
                        child: ClipRRect(
                          child: Image.network(movie.posterPath),
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                      ),
                    ),
                    Visibility(
                      visible: index == _current,
                      maintainSize: true,
                      maintainAnimation: true,
                      maintainState: true,
                      child: Container(
                        width: 300,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  movie.genre,
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.black26,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "${movie.runtime} minutes",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.black26,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            Container(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 20.0,
                                    ),
                                    Text(
                                      " ${movie.voteAverage / 2}",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.black26,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Center(
                        child: Text(
                          movie.title,
                          style: TextStyle(color: Colors.white, fontSize: 24.0, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return DetailScreen(movies[index]);
                }));
              },
            );
          });
        }).toList());
  }
}

extension IndexedIterable<E> on Iterable<E> {
  Iterable<T> mapIndexed<T>(T Function(E e, int i) f) {
    var i = 0;
    return map((e) => f(e, i++));
  }
}
