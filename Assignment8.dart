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
      home: HomeScreen(),
    );
  }
}
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return OrientationBuilder(
            builder: (context, orientation) {
              if (orientation == Orientation.portrait) {
                return _buildPortraitLayout();
              } else {
                return _buildLandscapeLayout();
              }
            },
          );
        },
      ),
    );
  }

  Widget _buildLandscapeLayout() {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 300,
              width: 300,
              margin: EdgeInsets.all(20),
              child: Container(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
                child: CircleAvatar(
                  radius: 200,
                  backgroundImage: NetworkImage(
                    'https://121clicks.com/wp-content/uploads/2013/06/doll_photography.jpg',
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 10, right: 10, left: 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        'Jhone Doe',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 8,
                          ),
                          Wrap(
                            children: [
                              Text(
                                'Lorem ipsum dolor sit amet,consectetur adipiscing elit.'
                                    'Sed aliquet turpis eu enim tristique,'
                                    'in iaculis libero porttitor.',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          SizedBox(
                            height: 700,
                            width: 1000,
                            child: Container(
                              child: GridView.builder(
                                gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  mainAxisSpacing: 3,
                                  crossAxisSpacing: 1,
                                ),
                                itemCount: 10,
                                itemBuilder: (context, index) {
                                  return Card(
                                    child: Image.network(
                                      'https://121clicks.com/wp-content/uploads/2013/06/doll_photography.jpg',
                                      width: 150,
                                      height: 150,
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPortraitLayout() {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        margin: EdgeInsets.all(12),
        child: Column(
          children: [
            Container(
              height: 150,
              width: 150,
              margin: EdgeInsets.all(20),
              child: Container(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
                child: CircleAvatar(
                  radius: 100,
                  backgroundImage: NetworkImage(
                    'https://121clicks.com/wp-content/uploads/2013/06/doll_photography.jpg',
                  ),
                ),
              ),
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    child: Text(
                      'Jhone Doe',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Wrap(
                          children: [
                            Text(
                              'Lorem ipsum dolor sit amet,consectetur adipiscing elit.'
                                  'Sed aliquet turpis eu enim tristique,'
                                  'in iaculis libero porttitor.',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        SizedBox(
                          height: 500,
                          width: 1000,
                          child: Container(
                            child: GridView.builder(
                              gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                mainAxisSpacing: 3,
                                crossAxisSpacing: 1,
                              ),
                              itemCount: 10,
                              itemBuilder: (context, index) {
                                return Card(
                                  child: Image.network(
                                    'https://121clicks.com/wp-content/uploads/2013/06/doll_photography.jpg',
                                    width: 150,
                                    height: 150,
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}