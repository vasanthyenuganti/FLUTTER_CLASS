import 'package:flutter/material.dart';
import 'package:healthish_ui/widgets/layer_view_widget.dart';
import 'package:healthish_ui/widgets/layer_widget.dart';
import 'package:healthish_ui/widgets/tab_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        LayerWidget(),
        LayerViewWidget(),
      ],
    );
  }
}