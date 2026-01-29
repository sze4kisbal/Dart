import 'package:flutter/material.dart';

class Dadaist extends StatelessWidget {
  const Dadaist({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dadaista vers'),
          backgroundColor: const Color.fromARGB(255, 64, 249, 255),
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(255, 48, 133, 243),
                const Color.fromARGB(255, 212, 10, 145),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  """M. Laurens

CSENDESEN ALSZIK

áprilisi dadaista álmok

Csendesen alszik a táj szendereg a csősz
egyedül csüngök egy reccsenő faágon
ha végtelen hegynek mész hát légy erős
mindenáron
mert te alattam leszel ha ott hörgök fenn...""",
                  style: TextStyle(color: Colors.white),
                ),

                Text(
                  'Tovabb',
                  style: TextStyle(
                    color: const Color.fromARGB(255, 89, 235, 69),
                  ),
                ),
                SizedBox(height: 50),
                Text(""" Molnár Jolán

dadaisten

az isten
globál
golyóbist lóbál
elhittem
hogy él
golyó és kötél
mint sitten
nézni...""", style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
