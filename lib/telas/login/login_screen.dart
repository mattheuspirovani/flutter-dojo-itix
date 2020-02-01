import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Image.asset(
                    "assets/images/logo-flutter-dojo.png",
                    height: 80,
                  ),
                  SizedBox(
                    height: 90,
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: "Login"),
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(labelText: "Senha"),
                  ),
                  //SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      FlatButton(
                          padding: EdgeInsets.all(0),
                          onPressed: () {},
                          child: Text("Esqueci minha senha",
                              style: TextStyle(
                                color: Theme.of(context).primaryColor,
                              ))),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: SizedBox(
                            height: 60,
                            child: ButtonTheme(
                              child: RaisedButton(
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(10.0),
                                ),
                                color: Theme.of(context).primaryColor,
                                onPressed: () {},
                                child: Text("Entrar",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold)),
                              ),
                            )),
                      ),
                    ],
                  ),
                  SizedBox(height: 70),
                  Row(
                    children: <Widget>[
                      Expanded(
                          child: Divider(
                        color: Colors.black,
                        thickness: 0.5,
                      )),
                      Text(' Ou faça login com: '),
                      Expanded(
                          child: Divider(
                        color: Colors.black,
                        thickness: 0.5,
                      )),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: ButtonTheme(
                          height: 45,
                          child: OutlineButton(
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                new Icon(
                                  FontAwesomeIcons.google,
                                  size: 18,
                                ),
                                Text(
                                  '  Entrar com o google',
                                  style: TextStyle(
                                      fontSize: 12, color: Color(0xff6e6e6e)),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Expanded(
                        child: ButtonTheme(
                          height: 45,
                          buttonColor: Color(0xFF3b5998),
                          child: RaisedButton(
                            onPressed: () {},
                            elevation: 0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                new Icon(
                                  FontAwesomeIcons.facebookSquare,
                                  size: 18,
                                  color: Colors.white,
                                ),
                                Text('  Facebook',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.white)),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(15), topLeft: Radius.circular(15)),
          color: Color(0xffe9edf5),
        ),
        height: 80,
        alignment: Alignment.center,
        child: Text(
          "Ainda não possui uma conta? Faça seu cadastro agora",
          style: TextStyle(fontSize: 12, color: Color(0xff454F63)),
        ),
      ),
    );
  }
}
