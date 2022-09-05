import 'package:flutter/material.dart';

import 'screens/home/home_screen.dart';
import 'screens/home/home_screen.props.dart';
import 'screens/pdf_viewer/pdf_viewer_screen.dart';
import 'screens/pdf_viewer/pdf_viewer_screen.props.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PDF Creator',
      initialRoute: 'home',
      routes: {
        'home': (context) => HomeScreen(props: HomeScreenProps()),
        'pdf_viewer': (context) => PdfViewerScreen(
              props: ModalRoute.of(context)?.settings.arguments as PdfViewerScreenProps? ??
                  const PdfViewerScreenProps(pdf: null),
            ),
      },
    );
  }
}
