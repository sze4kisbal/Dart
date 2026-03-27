import 'package:flutter/material.dart';

void main() {
  runApp(const GombokApp());
}

class GombokApp extends StatelessWidget {
  const GombokApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const FoOldal(),
    );
  }
}

class FoOldal extends StatefulWidget {
  const FoOldal({super.key});

  @override
  State<FoOldal> createState() => _FoOldalState();
}

class _FoOldalState extends State<FoOldal> {
  bool kek = true;
  int szamlalo = 0;

  void szinValtas() {
    setState(() {
      kek = !kek;
    });
  }

  void novel() {
    setState(() {
      szamlalo++;
    });
  }

  void csokkent() {
    setState(() {
      szamlalo--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gombos app'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 120,
              height: 120,
              color: kek ? Colors.blue : Colors.red,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: szinValtas,
              child: const Text('Szin valtasa'),
            ),
            const SizedBox(height: 40),
            Text(
              'Szamlalo: $szamlalo',
              style: const TextStyle(fontSize: 28),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: novel,
                  child: const Text('+'),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: csokkent,
                  child: const Text('-'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}