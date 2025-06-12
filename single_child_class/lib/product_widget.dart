import 'package:flutter/material.dart';
import 'package:single_child_class/product_details_page.dart';

class ProductWidget extends StatelessWidget {
  final String imgUrl;
  final String name;
  final int price;
  const ProductWidget({
    super.key,
    required this.imgUrl,
    required this.name,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator
        Navigator.push(
          context,
          MaterialPageRoute(
            builder:
                (context) => ProductDetailsPage(
                  imgUrl: imgUrl,
                  name: name,
                  price: price,
                ),
          ),
        );
      },
      child: Container(
        height: 275,
        width: 200,
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 8,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image(
                image: NetworkImage(imgUrl),
                height: 175,
                width: 175,
                fit: BoxFit.cover,
              ),
            ),
            Text(name, style: TextStyle(fontSize: 16)),
            Row(
              children: [
                Icon(Icons.currency_rupee, size: 18),
                Text("$price", style: TextStyle(fontSize: 18)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
