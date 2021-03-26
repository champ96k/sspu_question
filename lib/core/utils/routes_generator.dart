import 'package:flutter/material.dart';
import 'package:sspu_question/core/core.dart';
import 'package:sspu_question/src/home/home_page.dart';
import 'package:sspu_question/src/screens/pdf_viewr_screen.dart';
import 'package:sspu_question/src/screens/semester_screen.dart';
import 'package:sspu_question/src/screens/subject_details_screen.dart';
import 'package:sspu_question/src/screens/subject_screen.dart';

class RouteGenerator {
  static Route<dynamic> generate(RouteSettings settings) {
    switch (settings.name) {

      //Home screen
      case ScreenName.home:
        return MaterialPageRoute(
          builder: (context) => HomePage(),
        );
        break;

       case ScreenName.semsterScreen:
        return MaterialPageRoute(
          builder: (context) => SemesterScreen(),
        );
        break;
      case ScreenName.subjectScreen:
        return MaterialPageRoute(
          builder: (context) => SubjectScreen(),
        );
        break;
      case ScreenName.subjectDetailsScreen:
        return MaterialPageRoute(
          builder: (context) => SubjectDetailsScreen(),
        );
        break;
       case ScreenName.pdfScreenViewer:
        return MaterialPageRoute(
          builder: (context) => PDFScreenViewer(),
        );
        break;

      default:
        return MaterialPageRoute(
          builder: (context) => HomePage(),
        );
    }
  }
}
