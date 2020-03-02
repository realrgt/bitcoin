import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: <Widget>[
            Image.asset("images/bitcoin.png"),
            Text("R\$ 2347477"),
            RaisedButton(
              color: Colors.orange,
              textColor: Colors.white,
              child: Text(
                "Atualizar",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20
                ),
              ),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
