import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  AppState createState() => AppState();
}

class AppState extends State<App> {
  List<String> items = ['Item 1', 'Item 2', 'Item 3', 'Item 4'];
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Dropdown Example'),
        ),
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(16.0),
            child: DropdownButton<String>(
              value: selectedValue,
              items: items.map((String item) {
                return DropdownMenuItem<String>(
                  value: item,
                  child: Text(item),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  selectedValue = newValue!;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}



