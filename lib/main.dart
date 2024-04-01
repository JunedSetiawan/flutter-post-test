import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:myapp/feed.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _pages = [
    Feed(),
    Feed(),
    Feed(),
    Feed(),
    Feed(),
  ];

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        elevation: 0,
        
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        centerTitle: true,
        title: const Text(
          "Instagram",
          style: TextStyle(
            color: Colors.green,
          ),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.camera_alt,
            color: Colors.green,
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.send,
              color: Colors.green,
            ),
          ),
        ], systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),

      body: SingleChildScrollView(
  child: _pages[currentPage],
),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        onTap: (i){
          setState(() {
            currentPage = i;
          });
        },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(color: Colors.green ,Icons.home),
            label: "Feed"
          ),
          BottomNavigationBarItem(
            icon: Icon(color: Colors.green ,Icons.search),
            label: "Search"
          ),
          BottomNavigationBarItem(
            icon: Icon(color: Colors.green ,Icons.add),
            label: "Upload"
          ),
          BottomNavigationBarItem(
            icon: Icon(color: Colors.green ,Icons.add_reaction_outlined),
            label: "Likes"
          ),
          BottomNavigationBarItem(
            icon: Icon(color: Colors.green ,Icons.account_box),
            label: "Account"
          ),
        ],
      ),
    );
  }
}