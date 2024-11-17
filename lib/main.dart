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
        fontFamily: 'GowunDodum',
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
      backgroundColor: Color.fromARGB(255, 18, 18, 18),
      appBar: AppBar(
        title: Text(
          'Home',
          style: TextStyle(
              fontFamily: 'SedgwickAveDisplay',
              // fontWeight: FontWeight.bold,
              fontSize: 34,
              color: Colors.white),
        ),
        backgroundColor: Colors.red,
      ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            child: Text(
              'Asset Gallery',
              style: TextStyle(
                fontFamily: 'GowunDodum',
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          // SizedBox(height: 5),
          SizedBox(
            height: 300,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: images.length,
              itemBuilder: (context, index) {
                return Center(
                    child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset(
                    images[index],
                    width: 400,
                    height: 400,
                  ),
                ));
              },
            ),
          ),
          // SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.all(10),
            child: Text(
              'Custom ListTitles',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.all(8),
            child: ListTile(
              trailing: CircleAvatar(
                  backgroundColor: Colors.red,
                  child:
                      Icon(Icons.add_moderator_rounded, color: Colors.white)),
              title: Text('GowunDodum Font',
                  style: TextStyle(
                      fontFamily: 'GowunDodum',
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Colors.red)),
            ),
          ),
          SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.all(8),
            child: ListTile(
              leading: Icon(Icons.person, color: Colors.white),
              title: Text('GowunDodum Font',
                  style: TextStyle(
                      fontFamily: 'GowunDodum',
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Colors.white)),
            ),
          ),
          SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.all(8),
            child: ListTile(
              trailing: CircleAvatar(
                  backgroundColor: Colors.red,
                  child: Icon(Icons.settings, color: Colors.white)),
              title: Text('RockSalt Font',
                  style: TextStyle(
                      fontFamily: 'RockSalt',
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.red)),
            ),
          ),
          SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.all(8),
            child: ListTile(
              leading: Icon(
                Icons.account_tree_rounded,
                color: Colors.white,
              ),
              title: Text(
                'Rock Salt Font',
                style: TextStyle(
                  fontFamily: 'RockSalt',
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.all(10),
            child: Text(
              'Network Url Gallery',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: 250,
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
