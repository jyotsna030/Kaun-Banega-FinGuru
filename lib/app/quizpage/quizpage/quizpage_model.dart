import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'quizpage_widget.dart' show QuizpageWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class QuizpageModel extends FlutterFlowModel<QuizpageWidget> {
  ///  Local state fields for this page.

  String? selectedOption;

  int? currentScore = 90;

  int currentQuestionIndex = 1;

  String currentQuestion = 'What is the basic economic problem?';

  ///  State fields for stateful widgets in this page.

  // State field(s) for Timer widget.
  final timerInitialTimeMs = 50000;
  int timerMilliseconds = 50000;
  String timerValue = StopWatchTimer.getDisplayTime(
    50000,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerController =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  // State field(s) for Checkbox widget.
  bool? checkboxValue2;
  // State field(s) for Checkbox widget.
  bool? checkboxValue3;
  // State field(s) for Checkbox widget.
  bool? checkboxValue4;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    timerController.dispose();
  }
}