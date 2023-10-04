import 'package:flutter/material.dart';

class InicialScreen extends StatelessWidget {
  const InicialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 250),
              child: Text('Bem vindo'),
            ),
            Container(
              alignment: Alignment.center,
              height: 200,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/select-game');
                },
                child: const Text('continuar'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
