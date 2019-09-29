import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final options = ['uno', 'dos', 'tres', 'cuatro', 'cinco', 'seis'];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Componentes Temp'),
          backgroundColor: Color(0xFFdd9933),
        ),
        body: ListView(
          children: _createItemsCorto(),
        ),
      ),
    );
  }

  /* List<Widget> _createItems() {
    List<Widget> list = new List<Widget>();
    for (var option in options) {
      final tempWidget = ListTile(
        title: Text('$option'),
        onTap: () => print('$option'),
      );
      list..add(tempWidget)..add(Divider());
    }
    return list;
  }*/

  List<Widget> _createItemsCorto() {
    return options.map((item) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item),
            onTap: () => print('$item'),
            leading: Icon(Icons.ac_unit),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          Divider()
        ],
      );
    }).toList();
  }
}
