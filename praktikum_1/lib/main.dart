// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
void main() {
 runApp(const MyApp());
}
class MyApp extends StatelessWidget {
 const MyApp({Key? key}) : super(key: key);
 // This widget is the root of your application.
 @override
 Widget build(BuildContext context) {
 return MaterialApp(
 title: "Hello World",
 home: const MyHomePage(title: "2211102075_RezaAvicenna"),
 );
 }
}
class MyHomePage extends StatefulWidget {
 const MyHomePage({Key? key, required this.title}) : super(key: key);
 final String title;
 @override
 State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
 @override
 Widget build(BuildContext context) {
 return Scaffold(
 appBar: AppBar(
 title: Text(widget.title),
 ),
 body: Center(
 child: Text(
 'Hello World',
 ),
 ),
 );
 }
}
