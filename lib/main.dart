import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meu Aplicativo',
      theme: ThemeData(
        primarySwatch:  Colors.red,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Layout Responsivo '),
        ),
      ),
      body: Center(
        child: Container(
          width: 300, // Largura fixa para o contêiner
          height: 400, // Altura fixa para o contêiner
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(20), // Bordas arredondadas
            boxShadow: const [
              BoxShadow(
                color: Color.fromARGB(234, 0 ,0 ,0),
                blurRadius: 10,
                offset: Offset(10, 10,), // Sombra abaixo do contêiner
              ),
            ],
          ),
          child: const Center(
            child: Text(
              'Meu Aplicativo',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
