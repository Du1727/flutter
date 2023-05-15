
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AnimatedScreen1(),
    );
  }
}


class AnimatedScreen1 extends StatefulWidget {
  const AnimatedScreen1({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen1> createState() => _AnimatedScreen1State();
}

class _AnimatedScreen1State extends State<AnimatedScreen1>
    with SingleTickerProviderStateMixin{
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController
      = AnimationController(duration: const Duration(seconds: 2), vsync: this);
    _animation
      = Tween<double>(begin: 0, end: 1.5).animate(_animationController);

    _animationController.forward();

  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          _animationController.reset();
          _animationController.forward();
        },
        child: const Icon(Icons.play_arrow),
      ),
      appBar: AppBar(title: const Text('Animated Screen')),
      body: Center(
        child: ScaleTransition(
          scale: _animation,
          child: const Text(
            'Hello, world!',
            style: TextStyle(fontSize: 50),
          ),
        ),
      ),
    );
  }
}
