import 'package:flutter/material.dart';
import 'package:pilem/services/api_service.dart';

class SearchScreen extends StatefulWidget{
  const SearchScreen({super.key});

  @override
  SearchScreenState createState() => SearchScreenState();
}

class SearchScreenState extends State<SearchScreen>{
  final ApiService _apiService = ApiService();
  final TextEditingController _searchController = TextEditingController();
  List<String> _searchResults = [];
  @override
  void initState(){
    super.initState();
    _searchController.addListener(_onSearchChanged);
  }
  @override
  void dispose(){
    _searchController.dispose();
    super.dispose();
  }
  void _searchMovies() async{
    if (_searchController.text.isEmpty){
      setState(() {
        _searchResults.clear();
      });
      return;
    }
    final List<Map<String, dynamic>> searchData = 
    await _apiService.searchMovies(_searchController.text);
    setState(() {
      _searchResults = searchData.map((e) => e['title'] as String).toList();
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search'),
      ),
      body: Padding (
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.grey,
                width: 1.0,
              ),
            )
          ]
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _searchController,
              decoration: const InputDecoration(
                hintText: 'Search movies',
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _searchResults.length,
              itemBuilder: (context, index){
                return ListTile(
                  title: Text(_searchResults[index]),
                );
              },
            ),
          ),
      ),
    );
  }
}

