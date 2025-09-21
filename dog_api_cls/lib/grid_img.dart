import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class GridImg extends StatefulWidget {
  const GridImg({super.key});

  @override
  State<GridImg> createState() => _GridImgState();
}

class _GridImgState extends State<GridImg> {
  Future<List<dynamic>> dogApiImg() async {
    try {
      final url = Uri.parse("https://dog.ceo/api/breeds/image/random/20");
      final res = await http.get(url);
      final data = jsonDecode(res.body);
      if (res.statusCode == 200) {
        return data["message"];
      } else {
        return [];
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  void initState() {
    super.initState();
    // dogApiImg();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("DOG API")),
      body: FutureBuilder(
        future: dogApiImg(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            // Ui
            // return Text("${snapshot.data}");
            return GridView.builder(
              itemBuilder: (context, index) {
                final img = snapshot.data?[index] ?? "";
                return Image(
                  fit: BoxFit.cover,
                  image: NetworkImage("$img"),
                  errorBuilder:
                      (context, error, stackTrace) => Icon(Icons.image),
                );
              },
              itemCount: snapshot.data?.length ?? 0,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
            );
          } else if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text("${snapshot.error}"));
          } else {
            return Center(child: Text("NO DATA"));
          }
        },
      ),
    );
  }
}
