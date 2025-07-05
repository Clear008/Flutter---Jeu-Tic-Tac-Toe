import 'package:flutter/material.dart';

class TicTacToeBoard extends StatefulWidget {
  final String player1;
  final String player2;

  const TicTacToeBoard({super.key, required this.player1, required this.player2});

  @override
  State<TicTacToeBoard> createState() => _TicTacToeBoardState();
}

class _TicTacToeBoardState extends State<TicTacToeBoard> {
  List<String> _board = List.filled(9, '');
  bool _xTurn = true;
  bool _gameOver = false;

  void _handleTap(int index) {
    if (_board[index] != '' || _gameOver) return;

    setState(() {
      _board[index] = _xTurn ? 'X' : 'O';
      _xTurn = !_xTurn;
    });

    String? winner = _checkWinner();
    if (winner != null) {
      final playerName = winner == 'X' ? widget.player1 : widget.player2;
      _showEndDialog('$playerName a gagné !');
      _gameOver = true;
    } else if (!_board.contains('')) {
      _showEndDialog("Match nul !");
      _gameOver = true;
    }
  }

  String? _checkWinner() {
    const winCombos = [
      [0, 1, 2], [3, 4, 5], [6, 7, 8],
      [0, 3, 6], [1, 4, 7], [2, 5, 8],
      [0, 4, 8], [2, 4, 6],
    ];
    for (var combo in winCombos) {
      final a = combo[0], b = combo[1], c = combo[2];
      if (_board[a] != '' && _board[a] == _board[b] && _board[a] == _board[c]) {
        return _board[a];
      }
    }
    return null;
  }

  void _showEndDialog(String message) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('Fin de la partie'),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () {
              _resetGame();
              Navigator.of(context).pop();
            },
            child: const Text('Rejouer'),
          ),
        ],
      ),
    );
  }

  void _resetGame() {
    setState(() {
      _board = List.filled(9, '');
      _xTurn = true;
      _gameOver = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentPlayer = _xTurn ? widget.player1 : widget.player2;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text('Au tour de : $currentPlayer', style: const TextStyle(fontSize: 20)),
        const SizedBox(height: 10),
        GridView.builder(
          shrinkWrap: true,
          itemCount: 9,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () => _handleTap(index),
              child: Container(
                margin: const EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  border: Border.all(color: Colors.blue),
                ),
                child: Center(
                  child: Text(
                    _board[index],
                    style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            );
          },
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: _resetGame,
          child: const Text('Restart'),
        ),
      ],
    );
  }
}
