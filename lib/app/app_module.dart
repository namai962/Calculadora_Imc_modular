import 'file:///C:/Users/Usuario/Desktop/desing/android_estudos/calculadora_imc/lib/app/app_widget.dart';
import 'package:calculadora_imc/app/pages/home/home_page.dart';
import 'package:calculadora_imc/app/pages/home/imc_controller.dart';
import 'package:calculadora_imc/app/pages/results/result_controller.dart';
import 'package:calculadora_imc/app/pages/results/result_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends MainModule {
  @override
  // TODO: implement binds
  List<Bind> get binds => [
        Bind((i) => ImcCalculator()),
        Bind((i) => ResultController()),
      ];

  @override
  // TODO: implement routers
  List<ModularRouter> get routers => [
        ModularRouter('/', child: (_, args) => HomePage()),
        ModularRouter('/result', child: (_, args) => ResultPage()),
      ];

  @override
  // TODO: implement bootstrap
  Widget get bootstrap => AppWidget();
}
