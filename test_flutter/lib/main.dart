// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:test_flutter/style/style_dictionary.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.from(
        colorScheme: const ColorScheme(
          primary: StyleDictionary.aliasColorFillPrimaryRed,
          background: StyleDictionary.colorBaseWhite,
          brightness: Brightness.light,
          error: StyleDictionary.aliasColorFillPrimaryRed,
          onBackground: StyleDictionary.aliasColorFillPrimaryRed,
          onError: StyleDictionary.aliasColorFillPrimaryRed,
          onPrimary: StyleDictionary.aliasColorFillPrimaryRed,
          onSecondary: StyleDictionary.aliasColorFillPrimaryRed,
          onSurface: StyleDictionary.aliasColorFillPrimaryRed,
          secondary: StyleDictionary.colorFillGreen,
          surface: StyleDictionary.colorBaseWhite,
        ),
      ),
      home: const MyHomePage(title: 'Flutter d Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo App', style: TextStyle(color: Colors.black)),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Testing Style Dictionary in Flutter app",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: StyleDictionary.componentTypographyButtonLFontSize
                      .toDouble(),
                ),
              ),
            ),
            SizedBox(
              height: StyleDictionary.aliasSpacingSpaceL.toDouble(),
            ),
            Button(
              title: ButtonType.Button,
            ),
            SizedBox(
              height: StyleDictionary.aliasSpacingSpaceL.toDouble(),
            ),
            Button(
              title: ButtonType.Cancel,
            ),
            SizedBox(
              height: StyleDictionary.aliasSpacingSpaceL.toDouble(),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class Button extends StatelessWidget {
  final ButtonType title;

  const Button({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        primary: buttonColor,
        padding: EdgeInsets.symmetric(
          horizontal:
              StyleDictionary.componentSpacingBodyPagePaddingLr.toDouble(),
        ),
        minimumSize: Size(
          StyleDictionary.componentSpacingBodyPagePaddingLr.toDouble(),
          StyleDictionary.componentSpacingBodyPagePaddingLr.toDouble(),
        ),
        onPrimary: StyleDictionary.colorBaseWhite,
        textStyle: TextStyle(
          color: StyleDictionary.componentColorButtonTextColor,
          fontWeight: FontWeight.normal,
          letterSpacing: StyleDictionary.componentTypographyButtonLLetterSpacing
              .toDouble(),
          fontSize:
              StyleDictionary.componentTypographyButtonLFontSize.toDouble(),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            StyleDictionary.componentBorderRadiusButton.toDouble(),
          ),
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: buttonColor,
        ),
        width: 100,
        height: 50,
        child: Center(
            child: Text(
          buttonText,
          // style:
        )),
      ),
    );
  }

  get buttonText {
    switch (title) {
      case ButtonType.Button:
        return "Button";
      case ButtonType.Cancel:
        return "Cancel";
      default:
        return "Button";
    }
  }

  get buttonColor {
    switch (title) {
      case ButtonType.Button:
        return StyleDictionary.componentColorButtonBackgroundColor;
      case ButtonType.Cancel:
        return StyleDictionary.componentColorButton2BackgroundColor;
      default:
        return StyleDictionary.componentColorButtonBackgroundColor;
    }
  }
}

enum ButtonType {
  Button,
  Cancel,
}
