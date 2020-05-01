import 'package:appatlasfacil/config/ui_icons.dart';
import 'package:appatlasfacil/src/widgets/SocialMediaWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class TelaLogin extends StatefulWidget {
  @override
  _TelaLoginState createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {
  bool _showPassword = false;

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
                      Text('Login', style: Theme.of(context).textTheme.display2),
                      SizedBox(height: 20),
                      new TextField(
                        style: TextStyle(color: Theme.of(context).focusColor),
                        keyboardType: TextInputType.emailAddress,
                        decoration: new InputDecoration(
                          hintText: 'Endereço de email',
                          hintStyle: Theme.of(context).textTheme.body1.merge(
                            TextStyle(color: Theme.of(context).focusColor.withOpacity(0.6)),
                          ),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Theme.of(context).focusColor.withOpacity(0.2))),
                          focusedBorder:
                          UnderlineInputBorder(borderSide: BorderSide(color: Theme.of(context).focusColor)),
                          prefixIcon: Icon(
                            UiIcons.envelope,
                            color: Theme.of(context).focusColor.withOpacity(0.6),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      new TextField(
                        style: TextStyle(color: Theme.of(context).focusColor),
                        keyboardType: TextInputType.text,
                        obscureText: !_showPassword,
                        decoration: new InputDecoration(
                          hintText: 'Password',
                          hintStyle: Theme.of(context).textTheme.body1.merge(
                            TextStyle(color: Theme.of(context).focusColor.withOpacity(0.6)),
                          ),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Theme.of(context).focusColor.withOpacity(0.2))),
                          focusedBorder:
                          UnderlineInputBorder(borderSide: BorderSide(color: Theme.of(context).focusColor)),
                          prefixIcon: Icon(
                            UiIcons.padlock_1,
                            color: Theme.of(context).focusColor.withOpacity(0.6),
                          ),
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _showPassword = !_showPassword;
                              });
                            },
                            color: Theme.of(context).focusColor.withOpacity(0.4),
                            icon: Icon(_showPassword ? Icons.visibility_off : Icons.visibility),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      FlatButton(
                        onPressed: () {},
                        child: Text(
                          'Esqueceu sua senha ?',
                          style: Theme.of(context).textTheme.body1,
                        ),
                      ),
                      SizedBox(height: 30),
                      FlatButton(
                        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 70),
                        onPressed: () {
                          // 2 number refer the index of Home page
                          Navigator.of(context).pushNamed('/Tabs', arguments: 2);
                        },
                        child: Text(
                          'Login',
                          style: Theme.of(context).textTheme.title.merge(
                            TextStyle(color: Theme.of(context).primaryColor),
                          ),
                        ),
                        color: Theme.of(context).accentColor,
                        shape: StadiumBorder(),
                      ),
                      SizedBox(height: 50),
                      Text(
                        'Ou usando mídias sociais',
                        style: Theme.of(context).textTheme.body1,
                      ),
                      SizedBox(height: 20),
                      new SocialMediaWidget()
                    ],
                  ),
                ),
              ],
            ),
            FlatButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/SignUp');
              },
              child: RichText(
                text: TextSpan(
                  style: Theme.of(context).textTheme.title.merge(
                    TextStyle(color: Theme.of(context).primaryColor),
                  ),
                  children: [
                    TextSpan(text: 'Você não tem uma conta?'),
                    TextSpan(text: ' Inscrever-se', style: TextStyle(fontWeight: FontWeight.w700)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
