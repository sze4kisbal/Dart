import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const SzamKitalaloApp());
}

class SzamKitalaloApp extends StatelessWidget {
  const SzamKitalaloApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Szamkitalalo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const JatekKepernyo(),
    );
  }
}

class JatekKepernyo extends StatefulWidget {
  const JatekKepernyo({super.key});

  @override
  State<JatekKepernyo> createState() => _JatekKepernyoState();
}

class _JatekKepernyoState extends State<JatekKepernyo> {
  final TextEditingController tippController = TextEditingController();

  int titkosSzam = Random().nextInt(100) + 1;
  String uzenet = "Tippelj egy szamot 1 es 100 kozott!";
  int probalkozasok = 0;
  bool jatekVege = false;

  void tippEllenorzes() {
    if (jatekVege) return;

    String bevitt = tippController.text;

    if (bevitt.isEmpty) {
      setState(() {
        uzenet = "Adj meg egy szamot!";
      });
      return;
    }

    int? tipp = int.tryParse(bevitt);

    if (tipp == null) {
      setState(() {
        uzenet = "Csak szamot adhatsz meg!";
      });
      return;
    }

    setState(() {
      probalkozasok++;

      if (tipp < titkosSzam) {
        uzenet = "Nagyobb szamra gondoltam!";
      } else if (tipp > titkosSzam) {
        uzenet = "Kisebb szamra gondoltam!";
      } else {
        uzenet = "Eltalaltad $probalkozasok probalkozasbol!";
        jatekVege = true;
      }
    });

    tippController.clear();
  }

  void ujJatek() {
    setState(() {
      titkosSzam = Random().nextInt(100) + 1;
      probalkozasok = 0;
      uzenet = "Uj jatek indult!";
      jatekVege = false;
      tippController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Szamkitalalo Jatek"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              uzenet,
              style: const TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 30),

            TextField(
              controller: tippController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Tipp",
              ),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: tippEllenorzes,
              child: const Text("Tipp elkuldese"),
            ),

            const SizedBox(height: 20),

            Text(
              "Probalkozasok: $probalkozasok",
              style: const TextStyle(fontSize: 16),
            ),

            const SizedBox(height: 30),

            ElevatedButton(
              onPressed: ujJatek,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
              ),
              child: const Text("Uj jatek"),
            ),
          ],
        ),
      ),
    );
  }
}