import 'package:flutter/material.dart';
import 'TelaOrdemServico.dart';



class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  void _abrirOrdemServico(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => TelaOrdemServico()));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:AppBar(
        title: Text("Teste Layout"),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset("img/brazil.jpg"),
              Padding(
                padding: EdgeInsets.only(top: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    GestureDetector(
                      onTap: _abrirOrdemServico,
                      child: Image.asset("img/brazil.jpg"),
                    ),
                    GestureDetector(
                      onTap: _abrirOrdemServico,
                      child: Image.asset("img/brazil.jpg"),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    GestureDetector(
                      onTap: _abrirOrdemServico,
                      child: Image.asset("img/brazil.jpg"),
                    ),
                    GestureDetector(
                      onTap: _abrirOrdemServico,
                      child: Image.asset("img/brazil.jpg"),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
