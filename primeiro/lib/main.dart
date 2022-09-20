import 'package:flutter/material.dart';

void main() => runApp(const ExemploInicial());

class ExemploInicial extends StatefulWidget {
  const ExemploInicial({Key? key}) : super(key: key);
  @override
  _ExemploInicial createState() => _ExemploInicial();
}

class _ExemploInicial extends State {
  var _currentPage = 0;
  final _pages = [
    const Anuncio(),
    const Salvo(),
    const Text("Pagina 3 - Contatos")
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(child: _pages.elementAt(_currentPage)),
        bottomNavigationBar: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.announcement), label: "Anúncios"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.car_rental_rounded,
                    color: Colors.green,
                  ),
                  label: "Salvos"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.mail), label: "Contatos"),
            ],
            currentIndex: _currentPage,
            fixedColor: Colors.blue,
            onTap: (int inIndex) {
              setState(() {
                _currentPage = inIndex;
              });
            }),
      ),
    );
  }
}

class Anuncio extends StatelessWidget {
  const Anuncio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Anúncios'),
            ),
            body: Center(
                child: Card(
              color: Colors.blue,
              elevation: 5.0,
              shadowColor: Colors.blue,
              child: Column(mainAxisSize: MainAxisSize.min, children: const [
                Text("Anúncio 1"),
                Divider(),
                Text("Ford Ka Sport 2012"),
                Divider(),
                Divider(),
                Divider(),
                Divider(),
                Text("Anúncio 2"),
                Divider(),
                Text("Ford Fiesta 1.0 2014"),
                Divider(),
                Divider(),
                Divider(),
                Divider(),
                Text("Anúncio 3"),
                Divider(),
                Text("Ford Focus 2.0 2004"),
              ]),
            ))));
  }
}

class Salvo extends StatelessWidget {
  const Salvo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Anúncios Salvos'),
            ),
            body: Center(
                child: Card(
              color: Colors.blue,
              elevation: 5.0,
              shadowColor: Colors.blue,
              child: Column(mainAxisSize: MainAxisSize.min, children: const [
                Text("Anúncio 2"),
                Divider(),
                Text("Ford Fiesta 1.0 2014"),
                Divider(),
                Text("Anúncio 3"),
                Divider(),
                Text("Ford Focus 2.0 2004"),
              ]),
            ))));
  }
}
