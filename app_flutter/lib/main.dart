import 'package:flutter/material.dart' hide SearchController;
import 'package:provider/provider.dart';
import 'features/search/controller/search_controller.dart';
import 'features/search/screens/search_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // O ChangeNotifierProvider "injeta" nosso controller na árvore de widgets,
    // tornando-o acessível para a SearchScreen e qualquer widget filho.
    return ChangeNotifierProvider(
      create: (context) => SearchController(),
      child: MaterialApp(
        title: 'Pesquisador Inteligente',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          useMaterial3: true,
          brightness: Brightness.dark, // Tema escuro pra começar!
        ),
        home: const SearchScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
