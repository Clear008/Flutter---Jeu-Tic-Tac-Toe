import 'package:flutter/material.dart';
import '../widgets/tictactoe_board.dart';

class TicTacToeScreen extends StatelessWidget {
  final String player1;
  final String player2;

  const TicTacToeScreen({super.key, required this.player1, required this.player2});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tic Tac Toe')),
      body: Center(
        child: TicTacToeBoard(player1: player1, player2: player2),
      ),
    );
  }
}
