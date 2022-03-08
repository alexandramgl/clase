import 'package:flutter/material.dart';

class Actividad extends StatelessWidget {
  const Actividad({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagina datos'),
        backgroundColor: Color.fromARGB(255, 228, 182, 236),
      ),
      body: Center(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Positioned(
                  top: 20.0,
                  left: 20.0,
                  child: Container(
                      width: 400.0,
                      height: 400.0,
                      //color: Colors.purple,
                      //padding: const EdgeInsets.all(15.0),
                      alignment: Alignment.bottomCenter,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://scontent-qro1-2.xx.fbcdn.net/v/t39.30808-6/275017380_2739108639566060_5858279165114670738_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=8bfeb9&_nc_eui2=AeGYOJeRYsGhtj5-UW227NDiIYf_GBMs4tUhh_8YEyzi1ci5XnvnJzdD7ydsKnJEBCACPZCV04QmAC35nbP1t4RK&_nc_ohc=skkIgmyWn_UAX8b7LyJ&_nc_ht=scontent-qro1-2.xx&oh=00_AT_d6nKvpWaifYmzHeoi9TmjTPmGkSpVKMh8d9fKu2d0Ow&oe=62236EA3'))),
                      child: const Text('Alexandra Gudiño',
                          style: TextStyle(
                              fontSize: 33,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)))),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.purple[900]),
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
