import 'package:flutter/material.dart';
import 'package:flutter_pertemuan9v3/screen.dart';
class RouteGenerator {
static Route<dynamic> generateRoute(RouteSettings
settings) {
// jika ingin mengirim argument
// final args = settings.arguments;
switch (settings.name) {
case '/':
return MaterialPageRoute(builder: (_) => const HomePage());
case '/about':
return MaterialPageRoute(builder: (_) =>
const AboutPage());
// return MaterialPageRoute(builder: (_) =>
default:
return _errorRoute();
}
}
static Route<dynamic> _errorRoute() {
return MaterialPageRoute(builder: (_) {
return Scaffold(
appBar: AppBar(title: const Text("Error")),
body: const Center(child: Text('Error page')),
);
});
}
}