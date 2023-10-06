import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  String selectedSize = '';
  void _showSnackBar(BuildContext context, String size) {
    ScaffoldMessenger.of(context).removeCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Selected Size  $size'),
      ),
    );
  }

  void _selectSize(String size) {
    setState(() {
      selectedSize = size;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Size Selector"),
        centerTitle: true,
      ),
      body: Center(
        child: Wrap(
          spacing: 15,
          runSpacing: 10,
          children: [
            SizedBox(
              width: 60,
              height: 20,
              child: ElevatedButton(
                onPressed: () {
                  _selectSize('S');
                  _showSnackBar(context, 'S');
                },
                style: ElevatedButton.styleFrom(
                  primary: 'S' == selectedSize ? Colors.orange : Colors.grey,
                ),
                child: Text('S'),
              ),
            ),
            SizedBox(
              width: 60,
              height: 20,
              child: ElevatedButton(
                onPressed: () {
                  _selectSize('M');
                  _showSnackBar(context, 'M');
                },
                style: ElevatedButton.styleFrom(
                  primary: 'M' == selectedSize ? Colors.orange : Colors.grey,
                ),
                child: Text('M'),
              ),
            ),
            SizedBox(
              width: 60,
              height: 20,
              child: ElevatedButton(
                onPressed: () {
                  _selectSize('L');
                  _showSnackBar(context, 'L');
                },
                style: ElevatedButton.styleFrom(
                  primary: 'L' == selectedSize ? Colors.orange : Colors.grey,
                ),
                child: Text('L'),
              ),
            ),
            SizedBox(
              width: 60,
              height: 20,
              child: ElevatedButton(
                onPressed: () {
                  _selectSize('XL');
                  _showSnackBar(context, 'L');
                },
                style: ElevatedButton.styleFrom(
                  primary: 'XL' == selectedSize ? Colors.orange : Colors.grey,
                ),
                child: Text('XL'),
              ),
            ),
            SizedBox(
              width: 60,
              height: 20,
              child: ElevatedButton(
                onPressed: () {
                  _selectSize('XXL');
                  _showSnackBar(context, 'XXL');
                },
                style: ElevatedButton.styleFrom(
                  primary: 'XXL' == selectedSize ? Colors.orange : Colors.grey,
                ),
                child: Text('XXL'),
              ),
            ),
            SizedBox(
              width: 60,
              height: 20,
              child: ElevatedButton(
                onPressed: () {
                  _selectSize('XXXL');
                  _showSnackBar(context, 'XXXL');
                },
                style: ElevatedButton.styleFrom(
                  primary: 'XXXL' == selectedSize ? Colors.orange : Colors.grey,
                ),
                child: Text('XXXL'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}