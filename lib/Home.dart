import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String _preco = "0";

  void _atualizarPreco() async {

    String url = "https://blockchain.info/ticker";

    http.Response response = await http.get(url);

    Map<String, dynamic> retorno = json.decode( response.body );

    print(response.statusCode.toString());
    print( "Retorno: " + retorno["BRL"]["buy"].toString() );

    setState(() {
      this._preco = retorno["BRL"]["buy"].toString();
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("images/bitcoin.png"),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                  "R\$ $_preco",
                style: TextStyle(
                  fontSize: 32
                ),
              ),
            ),
            RaisedButton(
              color: Colors.orange,
              textColor: Colors.white,
              padding: EdgeInsets.fromLTRB(25, 15, 25, 15),
              child: Text(
                "Atualizar",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20
                ),
              ),
              onPressed: () => _atualizarPreco(),
            )
          ],
        ),
      ),
    );
  }
}
