import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ColorChangeScreen(),
    );
  }
}

class ColorChangeScreen extends StatefulWidget {
  @override
  _ColorChangeScreenState createState() => _ColorChangeScreenState();
}
class _ColorChangeScreenState extends State<ColorChangeScreen> {
  String choose = '';
  void changeColor(String size) {
    setState(() {
      choose = size;
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Selected Size: $size'),
      ),
    );
  }
  Color getButtonColor(String size) {
    if (choose == size) {
      return Colors.orange;
    } else
      return Colors.grey;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('Size Selector'),
    ),
    body: Container(
     margin: EdgeInsets.all(20),
    padding: EdgeInsets.all(30),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
    Wrap(
    spacing: 10,
    runSpacing: 10,
    children: [
    ElevatedButton(
    onPressed: () {
    changeColor('S');
    },
    style: ElevatedButton.styleFrom(
    backgroundColor: getButtonColor('S'),
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(8.0),
    ),
    ),
    child: Padding(
    padding: EdgeInsets.all(12.0),
    child: Text(
    'S',
    style: TextStyle(
    color: Colors.white,
    ),
    ),
    ),
    ),
    ElevatedButton(
    onPressed: () {
    changeColor('M');
    },
    style: ElevatedButton.styleFrom(
    backgroundColor: getButtonColor('M'),
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(8.0),
    ),
    ),
    child: Padding(
    padding: EdgeInsets.all(12.0),
    child: Text(
    'M',
    style: TextStyle(
    color: Colors.white,
    ),
    ),
    ),
    ),
    ElevatedButton(
    onPressed: () {
    changeColor('L');
    },
    style: ElevatedButton.styleFrom(
    backgroundColor: getButtonColor('L'),
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(8.0),
    ),
    ),
    child: Padding(
    padding: EdgeInsets.all(12.0),
    child: Text(
    'L',
    style: TextStyle(
    color: Colors.white,
    ),
    ),
    ),
    ),
    ElevatedButton(
    onPressed: () {
    changeColor('XL');
    },
    style: ElevatedButton.styleFrom(
    backgroundColor: getButtonColor('XL'),
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(8.0),
    ),
    ),
    child: Padding(
    padding: EdgeInsets.all(12.0),
    child: Text(
    'XL',
    style: TextStyle(
    color: Colors.white,
    ),
    ),
    ),
    ),
    ElevatedButton(
    onPressed: () {
    changeColor('XXL');
    },

        style: ElevatedButton.styleFrom(
     backgroundColor: getButtonColor('XXL'),
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(8.0),
    ),
    ),
    child: Padding(
    padding: EdgeInsets.all(12.0),
    child: Text(
    ' XXL',
    style: TextStyle(
    color: Colors.white,
    ),
    ),
    ),
    ),
    ElevatedButton(
    onPressed: () {
    changeColor('XXXL');
    },
    style: ElevatedButton.styleFrom(
    backgroundColor: getButtonColor('XXXL'),
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(8.0),
    ),
    ),
    child: Padding(
    padding: EdgeInsets.all(12.0),
    child: Text(
    'XXXL',
    style: TextStyle(
    color: Colors.white,
    ),
    ),
    ),
    ),
    ],
    ),
    ],
    ),
    ),
    );
  }
}

