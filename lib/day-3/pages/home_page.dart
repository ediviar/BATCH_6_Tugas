import 'package:flutter/material.dart';
import 'package:project/day-3/widgets/counter_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var counter = 1;

  @override
  void initState() {
    counter = 20;
    super.initState();
  }

  void increment() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Home Page"),
          actions: [
            IconButton(
              onPressed: () {}, 
              icon: Icon(Icons.add)
            ),
            IconButton(
              onPressed: () {}, 
              icon: Icon(Icons.more_vert)
            ),
          ],
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(icon: Icon(Icons.numbers)),
              Tab(icon: Icon(Icons.mouse)),
              Tab(icon: Icon(Icons.image)),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Center(
              child: CounterWidget(counter: counter),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FilledButton(
                  onPressed: () {}, 
                  child: Text("Elevated Button")
                ),
                ElevatedButton(
                  onPressed: () {}, 
                  child: Text("Elevated Button")
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context, 
                      builder: (context) => AlertDialog(
                        title: Text("Gesture Detector"),
                        content: Text("OnTap"),
                      )
                    );
                  },
                  child: Image.asset(
                    "assets/ic_launcher.png",
                    width: 64,
                    height: 64,
                  ),
                ),
                Image.asset(
                  "assets/ic_launcher.png",
                  width: 32,
                  height: 32,
                ),
                InkWell(
                  radius: 8,
                  borderRadius: BorderRadius.circular(12),
                  onTap: () {
                    showDialog(
                      context: context, 
                      builder: (context) => AlertDialog(
                        title: Text("Gesture Detector"),
                        content: Text("OnTap"),
                      )
                    );
                  },
                  child: Image.asset(
                    "assets/ic_launcher.png",
                    width: 48,
                    height: 48,
                  ),
                ),
              ],
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: increment,
          child: Icon(Icons.add),
        ),
        drawer: Drawer(
          child: Text("data"),
        ),
      ),
    );
  }
}