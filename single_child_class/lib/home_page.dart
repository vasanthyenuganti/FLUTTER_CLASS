import 'package:flutter/material.dart';
import 'package:single_child_class/product_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text("Flipkart"), backgroundColor: Colors.blue),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Flowers", style: TextStyle(fontSize: 16)),
            SizedBox(height: 12),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                spacing: 16,
                children: List.generate(
                  10,
                  (i) => ProductWidget(
                    imgUrl:
                        "https://cdn.pixabay.com/photo/2025/04/22/09/32/daisy-9549631_1280.jpg",
                    name: "Sunflowers-${i + 1}",
                    price: 50 * (i + 1),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
