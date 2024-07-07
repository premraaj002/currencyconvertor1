import 'package:currency_converter/Pages/currency_material_page.dart';
import 'package:flutter/material.dart';
// import './pages/currency_converter_material_page.dart';
//        > relative import

void main() {
  runApp(const MyApp());
}

//Types of widgets
//1.Statelesswidgets  -> immutable
//2.statefulwidgets  -> mutable
//3.inheritedWidgets

//types of design
// 1.Material Design -> for android design developed by google
// 2.Cupertino Design -> for ios design developed by apple

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: CurrencyMaterialPage());
  }
}
