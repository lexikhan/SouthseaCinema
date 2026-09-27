import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    title: 'Sandwich Shop App',
    home: Scaffold(
      appBar: AppBar(title: const Text('Ticket Purchaser')),
      body: const Center(
        child: OrderItemDisplay(5, 'Spongebob Movie'),
      ),
    ),
  );
}
}

class OrderItemDisplay extends StatelessWidget {
  final String movieName;
  final int quantity;

  const OrderItemDisplay(this.quantity, this.movieName, {super.key});

  @override
  Widget build(BuildContext context) {
  return Text('$quantity $movieName tickets: ${'🎫' * quantity}');
}
}
