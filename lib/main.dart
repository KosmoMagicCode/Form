import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:form_app/widgets/form/form_widget.dart';

import 'generated/l10n.dart';

void main() async {
  await S.load(const Locale.fromSubtags(languageCode: 'en'));
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 77, 77, 77),
        scaffoldBackgroundColor: Color.fromARGB(255, 255, 255, 255),
        indicatorColor: Color.fromARGB(255, 90, 192, 255),
        focusColor: Color.fromARGB(255, 250, 96, 96),
        primaryColorLight: const Color.fromARGB(255, 255, 211, 254),
        hintColor: Color.fromARGB(255, 133, 133, 133),
        cardColor: const Color.fromRGBO(255, 255, 255, 0.2),
        textTheme: const TextTheme(
            bodyMedium: TextStyle(color: Color.fromARGB(255, 29, 29, 29))),
        //primaryTextTheme: const TextTheme(bodyMedium: TextStyle(color:Colors.white)),
        iconTheme: const IconThemeData(color: Color.fromRGBO(127, 127, 127, 1)),
        appBarTheme: const AppBarTheme(
            backgroundColor: Color.fromRGBO(236, 104, 71, 1.0),
            shadowColor: Color.fromRGBO(0, 0, 0, 0)),
      ),
      routes: {
        '/form': (ctx) => FormWidget(),
      },
      initialRoute: '/form',
      //home: const FormWidget(),
    );
  }
}
