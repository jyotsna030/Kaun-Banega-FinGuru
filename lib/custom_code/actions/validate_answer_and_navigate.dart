// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right

Future<void> validateAnswerAndNavigate(
  String selectedOption,
  String correctOption,
  int points,
) async {
  // Get the current user's ID
  final userId = currentUserUid;

  // Check if the selected option matches the correct answer
  if (selectedOption == correctOption) {
    // Update the total score in Firestore
    final userDoc = FirebaseFirestore.instance.collection('users').doc(userId);
    await userDoc.update({
      'totalScore': FieldValue.increment(points),
    });

    // Navigate to the next question
    FFAppState().currentQuestionIndex += 1;
  } else {
    // End the quiz and navigate to the final score screen
    context.pushNamed('FinalScoreScreen');
  }
}
