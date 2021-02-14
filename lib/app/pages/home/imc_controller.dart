import 'dart:ui';
import 'package:mobx/mobx.dart';
import 'package:flutter/material.dart';

part 'imc_controller.g.dart';

class ImcCalculator = _ImcCalculator with _$ImcCalculator;

abstract class _ImcCalculator with Store {
  @observable
  double peso = 0, altura = 0, imc = 0;
  @observable
  int _resulta = 0;
  @observable
  int _radioValue;
  @observable
  String sexo = '';
  @observable
  String resultado;
  @observable
  Color colorResultado, colorSexo;
  @observable
  TextEditingController pesoController = TextEditingController();
  @observable
  TextEditingController alturaController = TextEditingController();

  @computed
  bool get isFormValid =>
      peso != 0 && altura != 0 && _resulta != -1 && !isTextValid;

  bool get isTextValid =>
      pesoController.text == '' && alturaController.text == '';

  @action
  void setPeso(String value) => peso = double.parse(value);

  @action
  void setAltura(String value) => altura = double.parse(value) / 100;

  @action
  void calcImc() {
    imc = peso / (altura * altura);
    if (_resulta == 1) {
      sexo = 'Masculino';
      colorSexo = Colors.blueAccent;
      classMasc();
    } else {
      sexo = "Feminino";
      colorSexo = Colors.pinkAccent;
      classFem();
    }
  }

  @action
  void resetFields() {
    pesoController.text = '';
    alturaController.text = '';
    _handleRadioValueChange(-1);
    _resulta = -1;
    peso = 0;
    altura = 0;
  }

  @action
  void printImc() => print(imc.toStringAsPrecision(4));

  @action
  void _handleRadioValueChange(int value) {
    _radioValue = value;

    switch (_radioValue) {
      case 0:
        _resulta = 1;
        break;
      case 1:
        _resulta = 2;
        break;
    }
  }

  void classMasc() {
    resultado = '';
    if (imc < 20.7) {
      resultado += "Abaixo do peso";
      colorResultado = Colors.lightBlue[300];
    } else if (imc < 26.4) {
      resultado += "Peso ideal";
      colorResultado = Colors.green[300];
    } else if (imc < 27.8) {
      resultado += "um pouco acima do peso";
      colorResultado = Colors.orange[300];
    } else if (imc < 31.1) {
      resultado += "Acima do peso";
      colorResultado = Colors.teal;
    } else if (imc > 31.1) {
      resultado += "Obesidade";
      colorResultado = Colors.red[300];
    }
  }

  void classFem() {
    resultado = '';
    if (imc < 19.1) {
      resultado += "Abaixo do peso";
      colorResultado = Colors.lightBlue[300];
    } else if (imc < 25.8) {
      resultado += "Peso ideal";
      colorResultado = Colors.green[300];
    } else if (imc < 27.3) {
      resultado += "um pouco acima do peso";
      colorResultado = Colors.orange[300];
    } else if (imc < 32.3) {
      resultado += "Acima do peso";
      colorResultado = Colors.teal;
    } else if (imc > 32.3) {
      resultado += "Obesidade";
      colorResultado = Colors.red[300];
    }
  }

  Widget sexButton() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 0.01),
      child: new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Radio(
              value: 0,
              groupValue: _radioValue,
              onChanged: _handleRadioValueChange,
              activeColor: Colors.blueAccent,
            ),
            new Text(
              'Masculino',
              style: new TextStyle(
                fontSize: 16.0,
              ),
            ),
            new Radio(
              value: 1,
              groupValue: _radioValue,
              onChanged: _handleRadioValueChange,
              activeColor: Colors.pinkAccent,
            ),
            new Text(
              'Feminino',
              style: new TextStyle(
                fontSize: 16.0,
              ),
            ),
          ]),
    );
  }
}
