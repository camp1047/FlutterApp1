import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
    useMaterial3: true,
    textTheme: TextTheme(
      displayLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
      bodyLarge: TextStyle(fontSize: 18, color: Colors.red),
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.red, 
      brightness: Brightness.dark,
    ),
  ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      'assets/images/AI_Girl1.png',
      'assets/images/AI_Girl2.png',
      'assets/images/AI_Girl3.png',
    ];

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
        'Home', 
        style: TextStyle(
        fontFamily: 'RockSalt',
        fontWeight: FontWeight.bold,
        color: Colors.white),
        ),
        backgroundColor: Colors.red,
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 400,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: images.length,
              itemBuilder: (context, index) {
                return Center(
                    child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Image.asset(
                    images[index],
                    width: 600,
                    height: 400,
                  ),
                ));
              },
            ),
          ),
          const SizedBox(height: 30),
          const ListTile(
            leading: Icon(
            Icons.star,
            color: Colors.red,),
            title: Text(
              'LIST WITH GOWUNDODUM FONT',
              style: TextStyle(
                fontFamily: 'GowunDodum',
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
          ),
          const ListTile(
            leading: CircleAvatar(child: Icon(Icons.person)),
            title: Text(
              'ListTile with Regular Font',
              style: TextStyle(
                fontFamily: 'GowunDodum',
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
          ),
          const ListTile(
            leading: Icon(
            Icons.settings,
            color: Colors.red,),
            title: Text(
              'ListTile with Regular Font',
              style: TextStyle(
                fontFamily: 'GowunDodum',
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
          ),
          const ListTile(
            trailing: Icon(
            Icons.arrow_forward,
            color: Colors.red,),
            title: Text(
              'ListTile with Regular Font',
              style: TextStyle(
                fontFamily: 'GowunDodum',
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 300,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.network(
                    'https://picsum.photos/600/400?random=$index',
                    width: 300,
                    height: 200,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
