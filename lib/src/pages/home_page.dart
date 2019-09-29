// paquetes de flutter
import 'package:flutter/material.dart';

// paquetes de la app, propios
import 'package:components/src/providers/menu_provider.dart';
import 'package:components/src/utils/icono_string_util.dart';
import 'package:components/src/pages/alert_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
        backgroundColor: Color(0xFFdd9933),
      ),
      body: _list(),
    );
  } 

  Widget _list() {
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: ( BuildContext context, AsyncSnapshot<List<dynamic>> snapshot ) =>
        ListView(
          children: _listItems( snapshot.data, context ),
        ),
    );
  }

  List<Widget> _listItems( List<dynamic> data, BuildContext context) {
    final List<Widget> options = [];
    
    data.forEach((opt) {
      final widgetTemp = ListTile(
        title: Text(opt['text']),
        leading: getIcon(opt['icon']),
        trailing: Icon(Icons.arrow_forward_ios),
        onTap: () {
          Navigator.pushNamed(context, opt['ruta']);

          // De esta manera se puede hacer push tmb, pero es conveniente solo para un link
          // final route = MaterialPageRoute(
          //   builder: ( context ) => AlertPage()
          // );
          // Navigator.push(context, route);
        },
      );
      options..add(widgetTemp)
             ..add(Divider());
    });

    return options;
  }
}
