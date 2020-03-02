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
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("images/bitcoin.png"),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                  "R\$ 2347477",
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
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
