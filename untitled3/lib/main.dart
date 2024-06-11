import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyAppExt()
    );
  }
}
class MyAppExt extends StatefulWidget {
  MyAppExt({Key? key}) : super(key: key);

  @override
  MyAppExtState createState() => MyAppExtState();
}

class MyAppExtState extends State<MyAppExt> {
  String buttonName = 'Click';
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Title'),
      ), // AppBar
      body: Center(
          child:currentIndex ==0 ? Container(
            width: double.infinity,
            height: double.infinity,
            color:  Colors.yellow ,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.blue,
                      backgroundColor:Colors.red
                  ),
                  onPressed: () {
                    setState(() {
                      buttonName = 'clicked';
                    });
                  },
                  child: Text(buttonName),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) => NextPage(),
                      ),
                    );

                  },

                  child: const Text('next page'),
                ),
              ],
            ),
          )
              : Image.asset('images/78ad93a066a89e78c008c020d361569.png')
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Settings',
            icon: Icon(Icons.settings),
          ),
        ],
        currentIndex: 0,
        onTap: (int index){
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}




class NextPage extends StatelessWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ggggg'),
      ), // AppBar
    );
  }
}
