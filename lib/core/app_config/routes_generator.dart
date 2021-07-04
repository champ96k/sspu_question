import 'package:flutter/material.dart';

import '../../src/pages/home/home_screen.dart';
import '../../src/pages/other/pdf_viewr_screen.dart';
import '../../src/pages/other/semester_screen.dart';
import '../../src/pages/other/subject_details_screen.dart';
import '../../src/pages/other/subject_screen.dart';
import 'screen_name.dart';

class RouteGenerator {
  static Route<dynamic> generate(RouteSettings settings) {
    switch (settings.name) {
      //Home screen
      case ScreenName.home:
        return MaterialPageRoute(
          builder: (context) => HomeScreen(),
        );

      case ScreenName.semsterScreen:
        final args = settings.arguments as Map<String, dynamic>;
        return MaterialPageRoute(
          builder: (context) => SemesterScreen(
            branch: args['branch'],
          ),
        );

      case ScreenName.subjectScreen:
        final args = settings.arguments as Map<String, dynamic>;
        return MaterialPageRoute(
          builder: (context) => SubjectScreen(
            semesters: args['semesters'],
          ),
        );

      case ScreenName.subjectDetailsScreen:
        final args = settings.arguments as Map<String, dynamic>;
        return MaterialPageRoute(
          builder: (context) => SubjectDetailsScreen(
            subjects: args['subjects'],
          ),
        );

      case ScreenName.pdfScreenViewer:
        final args = settings.arguments as Map<String, dynamic>;
        return MaterialPageRoute(
          builder: (context) => PDFScreenViewer(
            questionPapers: args['questionPapers'],
          ),
        );

      default:
        return MaterialPageRoute(
          builder: (context) => HomeScreen(),
        );
    }
  }
}
