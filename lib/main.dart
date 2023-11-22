import 'package:expenseapp/pages/main_page.dart';
import 'package:flutter/material.dart';

ColorScheme lightColorsScheme =
    ColorScheme.fromSeed(
      seedColor:Colors.purple,
      primary: Colors.purple,
      secondary: Colors.white
      );
void main() {
  runApp(
    MaterialApp(
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: lightColorsScheme,
          appBarTheme:const AppBarTheme().copyWith(
              backgroundColor: lightColorsScheme.primary,
              foregroundColor: lightColorsScheme.secondary),
          cardTheme:
              const CardTheme().copyWith(color: lightColorsScheme.primary,
              margin:const EdgeInsets.symmetric(horizontal: 20,vertical: 10)),
          textTheme: ThemeData().textTheme.copyWith(
                titleLarge:const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 16),
              ),
        ),
        home: MainPage()),
  );
}

//modelleme => üzerinde çalışılacak yapıların uygulamada nesne haline getirilmesi