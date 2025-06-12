import 'package:flutter/material.dart';

class ProductDetailsPage extends StatefulWidget {
  final String imgUrl;
  final String name;
  final int price;
  const ProductDetailsPage({
    super.key,
    required this.imgUrl,
    required this.name,
    required this.price,
  });

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          spacing: 12,
          children: [
            Image(
              image: NetworkImage(widget.imgUrl),
              height: 200,
              width: double.infinity,
            ),
            Text(widget.name, style: TextStyle(fontSize: 16)),
            Row(
              children: [
                Icon(Icons.currency_rupee, size: 18),
                Text("Price : ${widget.price}", style: TextStyle(fontSize: 18)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
