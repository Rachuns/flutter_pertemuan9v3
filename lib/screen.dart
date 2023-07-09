import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: const Text('Belajar Routing'),
),
body: Center(
child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: [
ElevatedButton(
onPressed: () {
Navigator.pushNamed(context, '/about');
},
child: const Text('Tap Untuk ke AboutPage'),
),
ElevatedButton(
onPressed: () {
Navigator.pushNamed(context, '/halaman-404');
},
child: const Text('Tap Halaman lain'),
),
],
),
),
);
}
}
class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: const Text('Tentang Aplikasi'),
),
body: Center(
child: ElevatedButton(
onPressed: () {
Navigator.pop(context);
},
child: const Text('Kembali'),
),
),
);
}
}