import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  TextEditingController weightController = TextEditingController();
  TextEditingController heightController = TextEditingController();

  String _infoText = "Informe seus dados!";


  void _resetFields(){
    weightController.text = "";
    heightController.text = "";
    _infoText = "Informe seus Dados!";
  }

  void calculate(){
    double weight = double.parse(weightController.text);
    double height = double.parse(weightController.text)/100;
    double imc = weight/(height*height);

    if(imc < 18.6){
      _infoText = "Abaixo do Peso";
    }

  }


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
            onPressed: _resetFields,
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
                      controller: weightController,
                      decoration: InputDecoration(
                        labelText: ("Peso (Kg)"),
                        labelStyle: TextStyle(
                          color: Colors.green,
                          fontSize: 25
                        )
                      ),
                    ),
                    TextFormField(
                      controller: heightController,
                      decoration: InputDecoration(
                          labelText: ("Altura (Cm)"),
                          labelStyle: TextStyle(
                              color: Colors.green,
                            fontSize: 25
                          )
                      ),
                      keyboardType: TextInputType.number,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      child: RaisedButton(
                        highlightColor: Colors.lightGreen,
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
                      child: Text(_infoText, style: TextStyle(
                          color: Colors.green,
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
