import 'dart:ui';
import 'package:calculadora_imc/app/pages/home/imc_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final imcCalculator = Modular.get<ImcCalculator>();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora Imc'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        actions: [
          Observer(builder: (_) {
            return IconButton(
                icon: Icon(Icons.refresh),
                onPressed: imcCalculator.resetFields);
          })
        ],
      ),
      body: SingleChildScrollView(
          padding: EdgeInsets.only(left: 10.0, right: 10.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Icon(
                  Icons.person_outline,
                  size: 200.0,
                  color: Colors.deepPurple,
                ),
                Observer(builder: (_) {
                  return imcCalculator.sexButton();
                }),
                Observer(builder: (_){
                  return TextFormField(
                    keyboardType: TextInputType.number,
                    controller: imcCalculator.pesoController,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      labelText: 'Peso (Kg)',
                      labelStyle:
                      TextStyle(fontSize: 20.0, color: Colors.deepPurple),
                    ),
                    style: TextStyle(fontSize: 20.0, color: Colors.deepPurple),
                    onChanged: imcCalculator.setPeso,
                    // ignore: missing_return
                    validator: (value) {
                      if (value.isEmpty) {
                        return "insira seu peso!";
                      }
                    },
                  );
                }),
                Observer(builder: (_) {
                  return Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        controller: imcCalculator.alturaController,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          labelText: 'Altura(Cm)',
                          labelStyle: TextStyle(
                              fontSize: 20.0, color: Colors.deepPurple),
                        ),
                        style:
                            TextStyle(fontSize: 20.0, color: Colors.deepPurple),
                        onChanged: imcCalculator.setAltura,
                        // ignore: missing_return
                        validator: (value) {
                          if (value.isEmpty) {
                            return "insira sua altura!";
                          }
                        },
                      ));
                }),
                Padding(
                  padding: EdgeInsets.only(top: 60.0, bottom: 30.0),
                  child: Container(
                      height: 50.0,
                      child: Observer(builder: (_) {
                        return RaisedButton(
                          onPressed: imcCalculator.isFormValid ? () {
                            if(_formKey.currentState.validate()){
                              imcCalculator.calcImc();
                              Modular.to.pushNamed('/result');
                            }
                          } : null,
                          child: Text(
                            'Calcular',
                            style: TextStyle(fontSize: 25, color: Colors.white),
                          ),
                          color: Colors.deepPurple,
                        );
                      })),
                )
              ],
            ),
          )),
    );
  }
}
