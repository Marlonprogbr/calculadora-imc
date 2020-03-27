import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora de IMC"),
        centerTitle: true,
        backgroundColor: Colors.green,
        elevation: 10,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.refresh),
            color: Colors.white,
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Icon(
                  Icons.person_outline,
                  color: Colors.green,
                  size: 150,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      decoration: InputDecoration(labelText: ("Peso (Kg)")),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: ("Altura (Cm)")),
                      keyboardType: TextInputType.number,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      child: RaisedButton(
                        elevation: 10,
                        child: Text("Calcular", style: TextStyle(
                            fontSize: 22,
                            color: Colors.white
                        ),),
                        splashColor: Colors.white,
                        color: Colors.green,
                        onPressed: (){},
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text("Informe seus Dados!", style: TextStyle(
                          color: Colors.yellow,
                          fontSize: 25
                      ),),
                    )
                  ],
                ),
              )

            ],
          ),
        ],
      )
    );
  }
}
