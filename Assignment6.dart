import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: true,
        home: HomeScreen(),
    title: 'Assignment APP',
    );
    }
  }

  class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
  appBar: AppBar(
  centerTitle: true,
  title: Text('Photo Gallery'),
  ),
  body: SingleChildScrollView(
  child: Column(
  children: [
  Text(
  'Welcome to My Photo Gallery!',
  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
  ),

  SizedBox(
  height: 28,
  ),

  Padding(
  padding: const EdgeInsets.all(16.0),
  child: TextField(
  decoration: InputDecoration(
  hintText: 'Search for photos...',
  border: OutlineInputBorder(),
  ),
  ),
  ),

  GridView.builder(
  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
  crossAxisCount: 3),
  shrinkWrap: true,
  itemCount: 6,
  itemBuilder: (context, index) {
  return GestureDetector(
  onTap: () {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
  content: Text('Photo $index clicked !!'),
  ));
  },
  child: Column(children: [
  Image.network(
  'https://encrypted-tbn3.gstatic.com/licensed-image?q=tbn:ANd9GcQ5pAUkFjASncLgVEsqVbwyTj0LP1ObO85jakWZEibYYmjHzzQux9-C1zQ2DXiZnAldF_l5_EXyZXQqQf4',
  height: 100,
  ),
  Padding(
  padding: const EdgeInsets.all(8.0),
  child: Text(
  'Photo $index',
  style: TextStyle(fontWeight: FontWeight.bold),
  ),
  ),
  ]),
  );
  }),

  ListView.builder(
  shrinkWrap: true,
  itemCount: 3,
  itemBuilder: (context, index) {
  return ListTile(
  leading: CircleAvatar(
  radius: 20,
  backgroundImage: NetworkImage(
  'https://encrypted-tbn3.gstatic.com/licensed-image?q=tbn:ANd9GcQ5pAUkFjASncLgVEsqVbwyTj0LP1ObO85jakWZEibYYmjHzzQux9-C1zQ2DXiZnAldF_l5_EXyZXQqQf4'),
  ),
  title: Text('Photo ${index + 1}'),
  subtitle: Text('Description for Photo ${index + 1}'),
  );
  }),

  Container(
  decoration:
  BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
  child: IconButton(
  onPressed: () {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
  content: Text('Photos Uploaded Successfully!'),
  ));
  },
  icon: Icon(
  Icons.upload,
  color: Colors.white,
  ),
  ),
  )
  ],
  ),
  ),
  );
  }
  }