import 'package:flutter/material.dart';
 
import 'package:components/src/routes/routes.dart';
import 'package:components/src/pages/alert_page.dart';

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes App',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: getApplicationRoutes(),
      onGenerateRoute: ( RouteSettings settigns ){
        // rutas no definidas en routes, pasa por aqui.
        print('Se llama a la ruta: ${settigns.name}');
        return MaterialPageRoute(
          builder: (BuildContext context) => AlertPage()
        );
      },
    );
  }
}