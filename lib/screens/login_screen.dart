import 'package:flutter/material.dart';
import 'tictactoe_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _player1Controller = TextEditingController();
  final _player2Controller = TextEditingController();

  void _startGame() {
    final player1 = _player1Controller.text.trim();
    final player2 = _player2Controller.text.trim();

    if (player1.isNotEmpty && player2.isNotEmpty) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => TicTacToeScreen(player1: player1, player2: player2),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Veuillez entrer les noms des deux joueurs')),
      );
    }
  }

  @override
  void dispose() {
    _player1Controller.dispose();
    _player2Controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Choisir les joueurs')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _player1Controller,
              decoration: const InputDecoration(labelText: 'Nom du Joueur 1 (X)'),
            ),
            TextField(
              controller: _player2Controller,
              decoration: const InputDecoration(labelText: 'Nom du Joueur 2 (O)'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _startGame,
              child: const Text('Commencer la partie'),
            ),
          ],
        ),
      ),
    );
  }
}
