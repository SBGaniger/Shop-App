import 'package:flutter/material.dart';
import 'package:shop_app/home_page.dart';
import 'package:provider/provider.dart';
import 'cart_provide.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartProvider(),
      child: MaterialApp(
        title: 'Shopping App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Lato',
          colorScheme: ColorScheme.fromSeed(seedColor: Color.fromRGBO(254, 206, 1, 1)),
          appBarTheme: AppBarTheme(
            titleTextStyle:TextStyle(
              fontSize: 20,
              color: Colors.black,
            )
          ),
          inputDecorationTheme: InputDecorationTheme(
            hintStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
            prefixIconColor:Color.fromRGBO(119, 119, 119, 1),
            ),
            textTheme: TextTheme(
                titleLarge: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              titleMedium: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
      
              bodySmall: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              )
            ),
          useMaterial3: true,
          ),
          home: Provider(
              create: (context) => 'hi',
              child: HomePage()),
        ),
    );

  }
}
