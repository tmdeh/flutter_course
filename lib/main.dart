import 'package:flutter/material.dart';
import 'package:flutter_study/core/presentation/components/big_button.dart';
import 'package:flutter_study/ui/text_styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("components", style: TextStyles.largeBold,),
      ),
      body: ListView(
        children: [
          BigButton(),
        ],
      ),
    );
  }
}
