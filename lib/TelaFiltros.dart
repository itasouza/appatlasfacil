import 'package:appatlasfacil/src/widgets/DrawerWidget.dart';
import 'package:flutter/material.dart';
import 'TelaLogin.dart';
import 'config/ui_icons.dart';

class TelaFiltros extends StatefulWidget {
  @override
  _TelaFiltrosState createState() => _TelaFiltrosState();
}

class _TelaFiltrosState extends State<TelaFiltros> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget(),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: new IconButton(
          icon: new Icon(Icons.sort, color: Theme.of(context).hintColor),
          onPressed: () => {},
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Informe a Localização',
          style: Theme.of(context).textTheme.display1,
        ),
        actions: <Widget>[
          Container(
              width: 30,
              height: 30,
              margin: EdgeInsets.only(top: 12.5, bottom: 12.5, right: 20),
              child: InkWell(
                borderRadius: BorderRadius.circular(300),
                onTap: () {},
                child: CircleAvatar(
                  backgroundImage: AssetImage('img/user2.jpg'),
                ),
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Text(
                          "Itamar Souza",
                          textAlign: TextAlign.left,
                          style: Theme.of(context).textTheme.display2,
                        ),
                        Text(
                          "itasouza@yahoo.com.br",
                          style: Theme.of(context).textTheme.caption,
                        )
                      ],
                      crossAxisAlignment: CrossAxisAlignment.start,
                    ),
                  ),
                  SizedBox(
                      width: 55,
                      height: 55,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(300),
                        onTap: () {},
                        child: CircleAvatar(
                          backgroundImage: AssetImage('img/user2.jpg'),
                        ),
                      )),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(6),
                boxShadow: [
                  BoxShadow(
                      color: Theme.of(context).hintColor.withOpacity(0.15),
                      offset: Offset(0, 3),
                      blurRadius: 10)
                ],
              ),
              child: ListView(
                shrinkWrap: true,
                primary: false,
                children: <Widget>[
                  ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TelaLogin()));
                    },
                    dense: true,
                    title: Row(
                      children: <Widget>[
                        Icon(
                          UiIcons.placeholder,
                          size: 22,
                          color: Theme.of(context).focusColor,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Selecione a entidade',
                          style: Theme.of(context).textTheme.body1,
                        ),
                      ],
                    ),
                    trailing: Text(
                      'Opção',
                      style: TextStyle(color: Theme.of(context).focusColor),
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.of(context).pushNamed('/Languages');
                    },
                    dense: true,
                    title: Row(
                      children: <Widget>[
                        Icon(
                          UiIcons.planet_earth,
                          size: 22,
                          color: Theme.of(context).focusColor,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Selecione a planta',
                          style: Theme.of(context).textTheme.body1,
                        ),
                      ],
                    ),
                    trailing: Text(
                      'Opção',
                      style: TextStyle(color: Theme.of(context).focusColor),
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.of(context).pushNamed('/Help');
                    },
                    dense: true,
                    title: Row(
                      children: <Widget>[
                        Icon(
                          UiIcons.information,
                          size: 22,
                          color: Theme.of(context).focusColor,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Selecione centro de custo',
                          style: Theme.of(context).textTheme.body1,
                        ),
                      ],
                    ),
                    trailing: Text(
                      'Opção',
                      style: TextStyle(color: Theme.of(context).focusColor),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: FlatButton(
                padding: EdgeInsets.symmetric(horizontal: 35, vertical: 8),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TelaLogin()));
                },
                child: Text(
                  'Seguir',
                  style: Theme.of(context).textTheme.display1.merge(
                        TextStyle(color: Theme.of(context).primaryColor),
                      ),
                ),
                color: Theme.of(context).accentColor,
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(50),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

