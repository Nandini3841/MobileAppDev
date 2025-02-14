import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(home: AdditionGame()));
}

class AdditionGame extends StatefulWidget {
  @override
  _AdditionGameState createState() => _AdditionGameState();
}

class _AdditionGameState extends State<AdditionGame> {
  int num1 = Random().nextInt(10) + 1;
  int num2 = Random().nextInt(10) + 1;
  int correctCount = 0;
  int attempts = 0;

  final TextEditingController _controller = TextEditingController();
  String feedbackText = "";

  void _checkAnswer() {
    int answer = int.tryParse(_controller.text) ?? -1;
    setState(() {
      if (answer == num1 + num2) {
        correctCount++;
        feedbackText = "Correct!";
      } else {
        feedbackText = "Wrong Answer!";
      }

      attempts++;
      if (attempts < 5) {
        num1 = Random().nextInt(10) + 1;
        num2 = Random().nextInt(10) + 1;
      } else {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => GameOver(correctCount: correctCount),
          ),
        );
      }
      _controller.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Addition Game"),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Name: Nandini Bogineni',
                style: TextStyle(fontSize: 14, color: Colors.red),
              ),
              Text(
                'Student Number: 202112115',
                style: TextStyle(fontSize: 14, color: Colors.red),
              ),
              Text(
                "What is $num1 + $num2?",
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Your Answer",
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _checkAnswer,
                child: Text("Submit Answer"),
              ),
              SizedBox(height: 20),
              Text(
                feedbackText,
                style: TextStyle(fontSize: 18, color: Colors.green),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GameOver extends StatelessWidget {
  final int correctCount;

  GameOver({required this.correctCount});

  @override
  Widget build(BuildContext context) {
    bool isWinner = correctCount == 5;
    return Scaffold(
      appBar: AppBar(
        title: Text("Game Over!"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              isWinner ? Icons.emoji_events : Icons.sentiment_dissatisfied,
              color: isWinner ? Colors.amber : Colors.red,
              size: 100,
            ),
            Text(
              isWinner
                  ? "Congratulations! You won the trophy!"
                  : "Good Luck! You lost the game!",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: isWinner ? Colors.black : Colors.black,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => AdditionGame()),
                  (route) => false,
                );
              },
              child: Text("Play Again"),
            ),
          ],
        ),
      ),
    );
  }
}
