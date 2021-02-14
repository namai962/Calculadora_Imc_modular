// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'imc_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ImcCalculator on _ImcCalculator, Store {
  Computed<bool> _$isFormValidComputed;

  @override
  bool get isFormValid =>
      (_$isFormValidComputed ??= Computed<bool>(() => super.isFormValid,
              name: '_ImcCalculator.isFormValid'))
          .value;

  final _$pesoAtom = Atom(name: '_ImcCalculator.peso');

  @override
  double get peso {
    _$pesoAtom.reportRead();
    return super.peso;
  }

  @override
  set peso(double value) {
    _$pesoAtom.reportWrite(value, super.peso, () {
      super.peso = value;
    });
  }

  final _$alturaAtom = Atom(name: '_ImcCalculator.altura');

  @override
  double get altura {
    _$alturaAtom.reportRead();
    return super.altura;
  }

  @override
  set altura(double value) {
    _$alturaAtom.reportWrite(value, super.altura, () {
      super.altura = value;
    });
  }

  final _$imcAtom = Atom(name: '_ImcCalculator.imc');

  @override
  double get imc {
    _$imcAtom.reportRead();
    return super.imc;
  }

  @override
  set imc(double value) {
    _$imcAtom.reportWrite(value, super.imc, () {
      super.imc = value;
    });
  }

  final _$_resultaAtom = Atom(name: '_ImcCalculator._resulta');

  @override
  int get _resulta {
    _$_resultaAtom.reportRead();
    return super._resulta;
  }

  @override
  set _resulta(int value) {
    _$_resultaAtom.reportWrite(value, super._resulta, () {
      super._resulta = value;
    });
  }

  final _$_radioValueAtom = Atom(name: '_ImcCalculator._radioValue');

  @override
  int get _radioValue {
    _$_radioValueAtom.reportRead();
    return super._radioValue;
  }

  @override
  set _radioValue(int value) {
    _$_radioValueAtom.reportWrite(value, super._radioValue, () {
      super._radioValue = value;
    });
  }

  final _$sexoAtom = Atom(name: '_ImcCalculator.sexo');

  @override
  String get sexo {
    _$sexoAtom.reportRead();
    return super.sexo;
  }

  @override
  set sexo(String value) {
    _$sexoAtom.reportWrite(value, super.sexo, () {
      super.sexo = value;
    });
  }

  final _$resultadoAtom = Atom(name: '_ImcCalculator.resultado');

  @override
  String get resultado {
    _$resultadoAtom.reportRead();
    return super.resultado;
  }

  @override
  set resultado(String value) {
    _$resultadoAtom.reportWrite(value, super.resultado, () {
      super.resultado = value;
    });
  }

  final _$colorResultadoAtom = Atom(name: '_ImcCalculator.colorResultado');

  @override
  Color get colorResultado {
    _$colorResultadoAtom.reportRead();
    return super.colorResultado;
  }

  @override
  set colorResultado(Color value) {
    _$colorResultadoAtom.reportWrite(value, super.colorResultado, () {
      super.colorResultado = value;
    });
  }

  final _$colorSexoAtom = Atom(name: '_ImcCalculator.colorSexo');

  @override
  Color get colorSexo {
    _$colorSexoAtom.reportRead();
    return super.colorSexo;
  }

  @override
  set colorSexo(Color value) {
    _$colorSexoAtom.reportWrite(value, super.colorSexo, () {
      super.colorSexo = value;
    });
  }

  final _$pesoControllerAtom = Atom(name: '_ImcCalculator.pesoController');

  @override
  TextEditingController get pesoController {
    _$pesoControllerAtom.reportRead();
    return super.pesoController;
  }

  @override
  set pesoController(TextEditingController value) {
    _$pesoControllerAtom.reportWrite(value, super.pesoController, () {
      super.pesoController = value;
    });
  }

  final _$alturaControllerAtom = Atom(name: '_ImcCalculator.alturaController');

  @override
  TextEditingController get alturaController {
    _$alturaControllerAtom.reportRead();
    return super.alturaController;
  }

  @override
  set alturaController(TextEditingController value) {
    _$alturaControllerAtom.reportWrite(value, super.alturaController, () {
      super.alturaController = value;
    });
  }

  final _$_ImcCalculatorActionController =
      ActionController(name: '_ImcCalculator');

  @override
  void setPeso(String value) {
    final _$actionInfo = _$_ImcCalculatorActionController.startAction(
        name: '_ImcCalculator.setPeso');
    try {
      return super.setPeso(value);
    } finally {
      _$_ImcCalculatorActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setAltura(String value) {
    final _$actionInfo = _$_ImcCalculatorActionController.startAction(
        name: '_ImcCalculator.setAltura');
    try {
      return super.setAltura(value);
    } finally {
      _$_ImcCalculatorActionController.endAction(_$actionInfo);
    }
  }

  @override
  void calcImc() {
    final _$actionInfo = _$_ImcCalculatorActionController.startAction(
        name: '_ImcCalculator.calcImc');
    try {
      return super.calcImc();
    } finally {
      _$_ImcCalculatorActionController.endAction(_$actionInfo);
    }
  }

  @override
  void resetFields() {
    final _$actionInfo = _$_ImcCalculatorActionController.startAction(
        name: '_ImcCalculator.resetFields');
    try {
      return super.resetFields();
    } finally {
      _$_ImcCalculatorActionController.endAction(_$actionInfo);
    }
  }

  @override
  void printImc() {
    final _$actionInfo = _$_ImcCalculatorActionController.startAction(
        name: '_ImcCalculator.printImc');
    try {
      return super.printImc();
    } finally {
      _$_ImcCalculatorActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _handleRadioValueChange(int value) {
    final _$actionInfo = _$_ImcCalculatorActionController.startAction(
        name: '_ImcCalculator._handleRadioValueChange');
    try {
      return super._handleRadioValueChange(value);
    } finally {
      _$_ImcCalculatorActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
peso: ${peso},
altura: ${altura},
imc: ${imc},
sexo: ${sexo},
resultado: ${resultado},
colorResultado: ${colorResultado},
colorSexo: ${colorSexo},
pesoController: ${pesoController},
alturaController: ${alturaController},
isFormValid: ${isFormValid}
    ''';
  }
}
