import 'package:flutter/material.dart';

class LayerViewWidget extends StatelessWidget {
  const LayerViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        // leadingWidth: 0,
        leading: Icon(Icons.looks),
        title: Text("Healthish"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.message_rounded)),
          SizedBox(
            width: 12,
          )
        ],
      ),
    );
  }
}
