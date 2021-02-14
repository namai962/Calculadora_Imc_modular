import 'package:calculadora_imc/app/pages/home/imc_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'result_controller.g.dart';

class ResultController = _ResultController with _$ResultController;

abstract class _ResultController with Store {
  final imcCalculator = Modular.get<ImcCalculator>();

  Widget cardResult() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Sexo:',
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          'IMC:',
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          'Resultado:',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Observer(builder: (_) {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            '${imcCalculator.sexo}',
                            style: TextStyle(
                                fontSize: 20, color: imcCalculator.colorSexo),
                          ),
                          Text(
                            '${imcCalculator.imc.toStringAsPrecision(4)}',
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(
                            '${imcCalculator.resultado}',
                            style: TextStyle(
                                fontSize: 20,
                                color: imcCalculator.colorResultado),
                          ),
                        ],
                      );
                    })
                  ],
                ),
              )
            ],
          )),
    );
  }
}
