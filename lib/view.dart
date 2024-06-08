import 'package:flutter/material.dart';
import 'package:mvc_example/controller.dart';
import 'package:mvc_example/model.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  final Model _model = Model();
  late Controller _controller;

  @override
  void initState() {
    super.initState();
    _controller = Controller(_model);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter with MVC"),
      ),
      body: Center(
        child: Text(
          "${_controller.counter}",
          style: const TextStyle(fontSize: 40.0),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() {
          _controller.incrementCounter();
        }),
        child: const Icon(Icons.add),
      ),
    );
  }
}
