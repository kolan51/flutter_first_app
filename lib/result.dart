import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function restartApp;
  final int totalScore;

  String get resultPhrase {
    String resultText;

    if (totalScore <= 8) {
      resultText = 'You are awesome and innocent!';
    } else if (totalScore <= 12) {
      resultText = 'Pretty likeable!';
    } else if (totalScore <= 16) {
      resultText = 'You are strange!';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  const Result({Key key, @required this.restartApp, @required this.totalScore})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        heightFactor: double.infinity,
        widthFactor: double.infinity,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                resultPhrase,
                style: const TextStyle(
                    fontSize: 28,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              TextButton(
                style: TextButton.styleFrom(
                    primary: Colors.pink,
                    backgroundColor: Colors.yellow,
                    shadowColor: Colors.black,
                    elevation: 5,
                    padding: const EdgeInsets.all(10),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    side: const BorderSide(color: Colors.amberAccent)),
                onPressed: restartApp,
                child: const Text(
                  'Press this to restart the quiz!',
                  style: TextStyle(
                      fontSize: 18,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple),
                ),
              )
            ]));
  }
}
