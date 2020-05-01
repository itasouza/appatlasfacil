import 'package:appatlasfacil/config/ui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class TelaFiltros extends StatefulWidget {
  @override
  _TelaFiltrosState createState() => _TelaFiltrosState();
}

class _TelaFiltrosState extends State<TelaFiltros> {
  String dropdownValue = 'One';
  bool _showPassword = false;

  String entidade = 'Opcao 1';
  List<String> options = ['Opcao 1', 'Opcao 2', 'Opcao 3', 'Opcao 4'];

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                  margin: EdgeInsets.symmetric(vertical: 65, horizontal: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Theme.of(context).primaryColor,
                      boxShadow: [
                        BoxShadow(
                            color: Theme.of(context).hintColor.withOpacity(0.2), offset: Offset(0, 10), blurRadius: 20)
                      ]),
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 25),
                      Text('Filtros', style: Theme.of(context).textTheme.display2),
                      SizedBox(height: 20),
                      Text('Selecione a entidade'),
                      DropdownButton<String>(
                        value: entidade,
                        isExpanded: true,
                        icon: Icon(Icons.arrow_downward),
                        iconSize: 24,
                        elevation: 16,
                        style: TextStyle(color: Theme.of(context).focusColor),
                        underline: Container(
                          height: 2,
                          color: Colors.deepPurpleAccent,
                        ),
                        onChanged: (String newValue) {
                          setState(() {
                            entidade = newValue;
                          });
                        },
                        items: options
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                      Text('Selecione a Planta'),
                      DropdownButton<String>(
                        value: dropdownValue,
                        isExpanded: true,
                        icon: Icon(Icons.arrow_downward),
                        iconSize: 24,
                        elevation: 16,
                        style: TextStyle(color: Theme.of(context).focusColor),
                        underline: Container(
                          height: 2,
                          color: Colors.deepPurpleAccent,
                        ),
                        onChanged: (String newValue) {
                          setState(() {
                            dropdownValue = newValue;
                          });
                        },
                        items: <String>['One', 'Two', 'Free', 'Four']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                      Text('Selecione o Centro de Custo'),
                      DropdownButton<String>(
                        value: dropdownValue,
                        isExpanded: true,
                        icon: Icon(Icons.arrow_downward),
                        iconSize: 24,
                        elevation: 16,
                        style: TextStyle(color: Theme.of(context).focusColor),
                        underline: Container(
                          height: 2,
                          color: Colors.deepPurpleAccent,
                        ),
                        onChanged: (String newValue) {
                          setState(() {
                            dropdownValue = newValue;
                          });
                        },
                        items: <String>['One', 'Two', 'Free', 'Four']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                      SizedBox(height: 20),
                      FlatButton(
                        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 70),
                        onPressed: () {
                          // 2 number refer the index of Home page
                          //Navigator.of(context).pushNamed('/Tabs', arguments: 2);
                        },
                        child: Text(
                          'Acessar',
                          style: Theme.of(context).textTheme.title.merge(
                            TextStyle(color: Theme.of(context).primaryColor),
                          ),
                        ),
                        color: Theme.of(context).accentColor,
                        shape: StadiumBorder(),
                      ),
                      SizedBox(height: 50),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
