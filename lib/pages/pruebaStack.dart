import 'package:flutter/material.dart';

class PruebaStack extends StatelessWidget {
  const PruebaStack({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pagina stack')),
      body: Center(
        child: SizedBox(
          width: 300.0,
          height: 300,
          child: Center(
            child: Stack(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              fit: StackFit.expand,
              overflow: Overflow.visible,
              children: <Widget>[
                Container(
                  width: 300.0,
                  height: 300,
                  color: Colors.red,
                ),
                Positioned(
                    top: 80.0,
                    left: 80.0,
                    child: Container(
                      width: 250.0,
                      height: 250.0,
                      color: Colors.black,
                    )),
                Positioned(
                    top: 20.0,
                    left: 20.0,
                    child: Container(
                      width: 200.0,
                      height: 200.0,
                      //color: Colors.purple,
                      //padding: const EdgeInsets.all(15.0),
                      alignment: Alignment.bottomCenter,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://w7.pngwing.com/pngs/172/574/png-transparent-just-dance-2017-wii-u-dancing-video-game-human-fictional-character.png'))),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget stackSinPos() {
    return Center(
      child: SizedBox(
        width: 300.0,
        height: 300.0,
        child: Center(
            child: Stack(
          children: <Widget>[
            Container(
                width: 300.0,
                height: 300.0,
                color: Colors.red,
                padding: const EdgeInsets.all(15.0),
                alignment: Alignment.topRight,
                child:
                    const Text('Uno', style: TextStyle(color: Colors.white))),
            Container(
                width: 250.0,
                height: 250.0,
                color: Colors.black,
                padding: const EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child:
                    const Text('Dos', style: TextStyle(color: Colors.white))),
            Container(
                width: 200.0,
                height: 200.0,
                //color: Colors.purple,
                padding: const EdgeInsets.all(15.0),
                alignment: Alignment.bottomCenter,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://www.pngitem.com/pimgs/m/53-533465_dancer-png-photo-lyrical-dance-contemporary-dance-silhouette.png',
                            scale: 10.0))),
                child:
                    const Text('Tres', style: TextStyle(color: Colors.white)))
          ],
        )),
      ),
    );
  }
}
