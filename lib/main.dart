import 'package:flutter/material.dart';
import 'package:testflutter1/screens/datos.dart';
import 'package:testflutter1/screens/secondPage.dart';
import 'package:testflutter1/screens/thirdPage.dart';
import 'package:testflutter1/screens/TestStack.dart';
import 'package:testflutter1/screens/FormScreen.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter demo',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/second': (context) => const SecondPage(),
        '/third': (context) => const ThirdPage(),
        '/datos': (context) => const Datos(),
        '/Four': (context) => const TestStack(),
        '/five': (context) => const FormScreen()
      }
      //home: HomePage(),
      ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        backgroundColor: Color.fromARGB(255, 219, 21, 21),
        centerTitle: true,
        title: const Text('Pagina inicial'),
        elevation: 20.0,
        shadowColor: Color.fromARGB(255, 192, 167, 167),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(15))),
        actions: <Widget>[
          IconButton(icon: const Icon(Icons.search), onPressed: () => {})
        ],
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("assets/img/halo.jpg", width: 370.0),
            const SizedBox(height: 20.0),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 170, 128, 128)),
                    padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 15)),
                    textStyle: MaterialStateProperty.all(
                        const TextStyle(fontSize: 15))),
                child: const Text('Segunda Pantalla'),
                onPressed: () {
                  final route = MaterialPageRoute(
                    builder: (context) => const SecondPage(),
                  );
                  Navigator.pushNamed(context, '/second');
                }),
            const SizedBox(height: 10.0),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 170, 128, 128)),
                    padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 15)),
                    textStyle: MaterialStateProperty.all(
                        const TextStyle(fontSize: 15))),
                child: const Text('Tercera Pantalla'),
                onPressed: () {
                  final route = MaterialPageRoute(
                    builder: (context) => const ThirdPage(),
                  );
                  Navigator.pushNamed(context, '/third');
                }),
            const SizedBox(height: 10.0),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 170, 128, 128)),
                    padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 15)),
                    textStyle: MaterialStateProperty.all(
                        const TextStyle(fontSize: 15))),
                child: const Text('Pantalla Datos'),
                onPressed: () {
                  final route = MaterialPageRoute(
                    builder: (context) => const TestStack(),
                  );
                  Navigator.pushNamed(context, '/Four');
                }),
            const SizedBox(height: 10.0),
            ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 170, 128, 128)),
                  padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 15)),
                ),
                child: const Text('Datos'),
                onPressed: () {
                  final route = MaterialPageRoute(
                    builder: (context) => const Datos(),
                  );
                  Navigator.pushNamed(context, '/datos');
                }),
            const SizedBox(height: 10.0),
            ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 170, 128, 128)),
                  padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 15)),
                ),
                child: const Text('Datos Contar'),
                onPressed: () {
                  final route = MaterialPageRoute(
                    builder: (context) => const Datos(),
                  );
                  Navigator.pushNamed(context, '/five');
                })
          ],
        ),
      ),
    );
  }
}
