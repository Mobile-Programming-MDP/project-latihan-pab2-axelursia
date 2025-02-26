import 'package:flutter/material.dart';
import 'package:pilem/models/movie.dart';

class DetailScreen extends StatefulWidget {
  final Movie movie;

  const DetailScreen({super.key, required this.movie});

  @override
  DetailScreenState createState() => DetailScreenState();
}

class DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.movie.title), // Menggunakan widget.movie
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                'https://image.tmdb.org/t/p/w500${widget.movie.backdropPath}',
                height: 300,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 20),
              const Text(
                'Overview',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Text(widget.movie.overview), // Menggunakan widget.movie
              const SizedBox(height: 20),
              Row(
                children: [
                  const Icon(Icons.calendar_month, color: Colors.blue),
                  const SizedBox(width: 10),
                  const Text(
                    'Release Date:',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(width: 10),
                  Text(widget.movie.releaseDate), // Menggunakan widget.movie
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  const Icon(Icons.star, color: Colors.amber),
                  const SizedBox(width: 10),
                  const Text(
                    'Rating:',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(width: 10),
                  Text(widget.movie.voteAverage.toString()), // Menggunakan widget.movie
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
