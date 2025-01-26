import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Layout',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 58, 183, 146),
        ),
        useMaterial3: true,
      ),
      home: const HomePage(title: 'Program Layout'),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                //color: Colors.deepPurple,
                child: const Text('Layout Superior'),
              ),
            ),
            Expanded(
              flex: 8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Container(
                      //alignment: Alignment.center,
                      //color: const Color.fromARGB(255, 234, 216, 79),
                      //child: const Text('First Colun'),
                    ),
                  ),
                  Expanded(
                      flex: 2,
                      child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 163, 0, 208),
                      borderRadius: BorderRadius.circular(20),
                       boxShadow: const [
                        BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                        offset: Offset(10, 15), 
                    ),
                  ],
                ),
                child: const Text('My App'),
                    ),
                 ),
                  

                   Expanded(
                    child: Container(
                      //alignment: Alignment.center,
                      //color: const Color.fromARGB(255, 234, 62, 62),
                      //child: const Text('Third Colun'),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                //color: const Color.fromARGB(255, 237, 125, 183),
                child: const Text('Layout Inferior'),
              ),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
