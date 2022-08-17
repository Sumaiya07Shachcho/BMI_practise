import 'package:flutter/material.dart';

import 'dabbe.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> movieImages = [
    "https://m.media-amazon.com/images/M/MV5BMDg0ZDE4MmItZDNlNS00YWYyLWEzNGEtM2Q4YjNlNDdjNmYzXkEyXkFqcGdeQXVyMTMxMTY0OTQ@._V1_.jpg",
    "https://watchersonthewall.com/wp-content/uploads/2019/02/6.-Arya-Stark-GOT-Season-8-For-The-Throne-Character-Poster-min.jpg",
    "https://m.media-amazon.com/images/M/MV5BMGE3NGJlMTAtNGQ1MC00ZWQyLWIwMzktMjQ0NGE0MWRjMzAxXkEyXkFqcGdeQXVyNDQ2MTMzODA@._V1_FMjpg_UX1000_.jpg",
    "https://m.media-amazon.com/images/M/MV5BOGQ3ZjMwZDctZTFkMi00ZjUwLTlmMDUtNDZlYzJjNzZiNTg5XkEyXkFqcGdeQXVyMTMzODk3NDU0._V1_FMjpg_UX1000_.jpg"
  ];
  final List<String> movieName = ["Dabbe", "Game of Thrones", "Siccin", "RRR"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 0.7,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5),
            itemCount: movieImages.length,
            itemBuilder: (BuildContext ctx, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyDabbePage(
                              movieImage: movieImages[index],
                              movieName: movieName[index],
                            )),
                  );
                },
                child: Image.network(
                  movieImages[index],
                  fit: BoxFit.cover,
                ),
              );
            }),
      ),
    );
  }
}
// TODO Implement this library.