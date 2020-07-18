import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_movies_app/src/models/genres.dart';
import 'package:flutter_movies_app/src/provider/movie_provider.dart';

class GenresWrapList extends StatelessWidget {
  const GenresWrapList({
    Key key,
    @required this.genresId,
  }) : super(key:key);

  final List<int> genresId;

  @override
  Widget build(BuildContext context) {
    final List<Genre> genresList = MovieProvider.genresMovie;
    List<Genre> movieGenres = List();
    for (var x = 0; x < genresId.length; x++) {
      for (var z = 0; z < genresList.length; z++) {
        if (genresId[x] == genresList[z].id) {
          movieGenres.add(genresList[z]);
        }
      }
    }
    return Wrap(
      runSpacing: 10,
      spacing: 10,
      children: List.generate(
        movieGenres.length,
          (i) => Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 15.0, vertical: 3.0
            ),
            decoration: BoxDecoration(
              color: Colors.white70,
              borderRadius: BorderRadius.circular(15.0)
            ),
            child: Text(
              movieGenres[1].name + '',
              style: TextStyle(
                color: Colors.grey[900],
                fontWeight: FontWeight.w500,
                fontSize: 15
              ),
            ),
          )),
    );
  }
}