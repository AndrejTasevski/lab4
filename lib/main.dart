import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'screens/calendar_screen.dart';
import 'providers/exam_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ExamProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Exam Scheduler',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: Colors.grey[50],
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.blue[700],
            iconTheme: IconThemeData(color: Colors.white),
            titleTextStyle: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
          ),
          cardTheme: CardTheme(
            color: Colors.white,
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          textTheme: TextTheme(
            bodyLarge: TextStyle(
              color: Colors.grey[800],
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
            bodyMedium: TextStyle(
              color: Colors.grey[700],
              fontSize: 16,
            ),
            headlineSmall: TextStyle(
              color: Colors.blue[900],
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          ),
          buttonTheme: ButtonThemeData(
            buttonColor: Colors.blue[600],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            textTheme: ButtonTextTheme.primary,
          ),
        ),
        home: CalendarScreen(),
      ),
    );
  }
}
