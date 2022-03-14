import 'package:flutter/material.dart';
import 'pages/pruebaStack.dart';
import 'pages/actividad.dart';
import 'pages/formScreen.dart';
import 'pages/cardScreen.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter demo',
      initialRoute: '/',
      //home: HomePage(),
      routes: {
        '/': (context) => const HomePage(),
        '/stack': (context) => const PruebaStack(),
        '/actividad': (context) => const Actividad(),
        '/actividad1': (context) => MyStateFulWidget(),
        '/cardscreen': (context) => const CardScreen()
      }));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        backgroundColor: Colors.yellow,
        centerTitle: true,
        title: const Text('Pagina inicial'),
        elevation: 20.0,
        shadowColor: Colors.yellow[800],
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
            SizedBox(height: 20.0),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.orange),
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(horizontal: 25, vertical: 15)),
                    textStyle:
                        MaterialStateProperty.all(TextStyle(fontSize: 15))),
                child: const Text('Segunda pantalla'),
                onPressed: () {
                  final route = MaterialPageRoute(
                    builder: (context) => const SecondPage(),
                  );
                  Navigator.push(context, route);
                }),
            SizedBox(height: 10.0),
            ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.yellow),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 25, vertical: 15)),
                ),
                child: const Text('Datos'),
                onPressed: () {
                  final route = MaterialPageRoute(
                    builder: (context) => const DataPage(),
                  );
                  Navigator.push(context, route);
                }),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue[900]),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 25, vertical: 15)),
                  textStyle:
                      MaterialStateProperty.all(TextStyle(fontSize: 15))),
              child: const Text('Stack'),
              onPressed: () => Navigator.pushNamed(context, '/stack'),
            ),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 25, vertical: 15)),
                  textStyle:
                      MaterialStateProperty.all(TextStyle(fontSize: 15))),
              child: const Text('Actividad, tarea'),
              onPressed: () => Navigator.pushNamed(context, '/actividad'),
            ),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.indigo[200]),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 25, vertical: 15)),
                  textStyle:
                      MaterialStateProperty.all(TextStyle(fontSize: 15))),
              child: const Text('Formulario'),
              onPressed: () => Navigator.pushNamed(context, '/actividad1'),
            ),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.indigo[200]),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 25, vertical: 15)),
                  textStyle:
                      MaterialStateProperty.all(TextStyle(fontSize: 15))),
              child: const Text('Tarjeta'),
              onPressed: () => Navigator.pushNamed(context, '/cardscreen'),
            ),
          ],
        ),
      ),
    );
  }
}

// segunda página
class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Segunda pantalla'),
        backgroundColor: Colors.purple,
        centerTitle: true,
        elevation: 20.0,
        shadowColor: Colors.purple[400],
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(15))),
      ),
      body: Center(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.purple),
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(horizontal: 25, vertical: 15)),
                    textStyle:
                        MaterialStateProperty.all(TextStyle(fontSize: 15))),
                child: const Text('Regresar'),
                onPressed: () => Navigator.pop(context),
              )
            ]),
      ),
    );
  }
}

// página de datos

class DataPage extends StatelessWidget {
  const DataPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Datos'),
        backgroundColor: Colors.purple[900],
        centerTitle: true,
        elevation: 20.0,
        shadowColor: Colors.purple[400],
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(15))),
      ),
      body: Center(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/images/ale.jpg',
                width: 250.0,
              ),
              SizedBox(
                height: 20.0,
              ),
              Text('Alexandra Monserrath Gudiño Lucas',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center),
              SizedBox(height: 10.0),
              Text(
                'Tecnologías de la Información, área de desarrollo de software',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'TI01SM-20',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.blue[900]),
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(horizontal: 25, vertical: 15)),
                    textStyle:
                        MaterialStateProperty.all(TextStyle(fontSize: 15))),
                child: const Text('Regresar'),
                onPressed: () => Navigator.pop(context),
              )
            ]),
      ),
    );
  }
}
