// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'worker.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Worker on _WorkerBase, Store {
  Computed<bool> _$canSubmitComputed;

  @override
  bool get canSubmit =>
      (_$canSubmitComputed ??= Computed<bool>(() => super.canSubmit)).value;

  final _$isEmpresaAtom = Atom(name: '_WorkerBase.isEmpresa');

  @override
  bool get isEmpresa {
    _$isEmpresaAtom.context.enforceReadPolicy(_$isEmpresaAtom);
    _$isEmpresaAtom.reportObserved();
    return super.isEmpresa;
  }

  @override
  set isEmpresa(bool value) {
    _$isEmpresaAtom.context.conditionallyRunInAction(() {
      super.isEmpresa = value;
      _$isEmpresaAtom.reportChanged();
    }, _$isEmpresaAtom, name: '${_$isEmpresaAtom.name}_set');
  }

  final _$nomeAtom = Atom(name: '_WorkerBase.nome');

  @override
  String get nome {
    _$nomeAtom.context.enforceReadPolicy(_$nomeAtom);
    _$nomeAtom.reportObserved();
    return super.nome;
  }

  @override
  set nome(String value) {
    _$nomeAtom.context.conditionallyRunInAction(() {
      super.nome = value;
      _$nomeAtom.reportChanged();
    }, _$nomeAtom, name: '${_$nomeAtom.name}_set');
  }

  final _$empresaAtom = Atom(name: '_WorkerBase.empresa');

  @override
  String get empresa {
    _$empresaAtom.context.enforceReadPolicy(_$empresaAtom);
    _$empresaAtom.reportObserved();
    return super.empresa;
  }

  @override
  set empresa(String value) {
    _$empresaAtom.context.conditionallyRunInAction(() {
      super.empresa = value;
      _$empresaAtom.reportChanged();
    }, _$empresaAtom, name: '${_$empresaAtom.name}_set');
  }

  final _$telefoneAtom = Atom(name: '_WorkerBase.telefone');

  @override
  String get telefone {
    _$telefoneAtom.context.enforceReadPolicy(_$telefoneAtom);
    _$telefoneAtom.reportObserved();
    return super.telefone;
  }

  @override
  set telefone(String value) {
    _$telefoneAtom.context.conditionallyRunInAction(() {
      super.telefone = value;
      _$telefoneAtom.reportChanged();
    }, _$telefoneAtom, name: '${_$telefoneAtom.name}_set');
  }

  final _$emailAtom = Atom(name: '_WorkerBase.email');

  @override
  String get email {
    _$emailAtom.context.enforceReadPolicy(_$emailAtom);
    _$emailAtom.reportObserved();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.context.conditionallyRunInAction(() {
      super.email = value;
      _$emailAtom.reportChanged();
    }, _$emailAtom, name: '${_$emailAtom.name}_set');
  }

  final _$siteAtom = Atom(name: '_WorkerBase.site');

  @override
  String get site {
    _$siteAtom.context.enforceReadPolicy(_$siteAtom);
    _$siteAtom.reportObserved();
    return super.site;
  }

  @override
  set site(String value) {
    _$siteAtom.context.conditionallyRunInAction(() {
      super.site = value;
      _$siteAtom.reportChanged();
    }, _$siteAtom, name: '${_$siteAtom.name}_set');
  }

  final _$descricaoAtom = Atom(name: '_WorkerBase.descricao');

  @override
  String get descricao {
    _$descricaoAtom.context.enforceReadPolicy(_$descricaoAtom);
    _$descricaoAtom.reportObserved();
    return super.descricao;
  }

  @override
  set descricao(String value) {
    _$descricaoAtom.context.conditionallyRunInAction(() {
      super.descricao = value;
      _$descricaoAtom.reportChanged();
    }, _$descricaoAtom, name: '${_$descricaoAtom.name}_set');
  }

  final _$campoAtuacaoAtom = Atom(name: '_WorkerBase.campoAtuacao');

  @override
  String get campoAtuacao {
    _$campoAtuacaoAtom.context.enforceReadPolicy(_$campoAtuacaoAtom);
    _$campoAtuacaoAtom.reportObserved();
    return super.campoAtuacao;
  }

  @override
  set campoAtuacao(String value) {
    _$campoAtuacaoAtom.context.conditionallyRunInAction(() {
      super.campoAtuacao = value;
      _$campoAtuacaoAtom.reportChanged();
    }, _$campoAtuacaoAtom, name: '${_$campoAtuacaoAtom.name}_set');
  }

  final _$_WorkerBaseActionController = ActionController(name: '_WorkerBase');

  @override
  dynamic changeIsEmpresa(bool newValue) {
    final _$actionInfo = _$_WorkerBaseActionController.startAction();
    try {
      return super.changeIsEmpresa(newValue);
    } finally {
      _$_WorkerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeNome(String newValue) {
    final _$actionInfo = _$_WorkerBaseActionController.startAction();
    try {
      return super.changeNome(newValue);
    } finally {
      _$_WorkerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeEmpresa(String newValue) {
    final _$actionInfo = _$_WorkerBaseActionController.startAction();
    try {
      return super.changeEmpresa(newValue);
    } finally {
      _$_WorkerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeTelefone(String newValue) {
    final _$actionInfo = _$_WorkerBaseActionController.startAction();
    try {
      return super.changeTelefone(newValue);
    } finally {
      _$_WorkerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeEmail(String newValue) {
    final _$actionInfo = _$_WorkerBaseActionController.startAction();
    try {
      return super.changeEmail(newValue);
    } finally {
      _$_WorkerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeSite(String newValue) {
    final _$actionInfo = _$_WorkerBaseActionController.startAction();
    try {
      return super.changeSite(newValue);
    } finally {
      _$_WorkerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeDescricao(String newValue) {
    final _$actionInfo = _$_WorkerBaseActionController.startAction();
    try {
      return super.changeDescricao(newValue);
    } finally {
      _$_WorkerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeCampoAtuacao(String newValue) {
    final _$actionInfo = _$_WorkerBaseActionController.startAction();
    try {
      return super.changeCampoAtuacao(newValue);
    } finally {
      _$_WorkerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'isEmpresa: ${isEmpresa.toString()},nome: ${nome.toString()},empresa: ${empresa.toString()},telefone: ${telefone.toString()},email: ${email.toString()},site: ${site.toString()},descricao: ${descricao.toString()},campoAtuacao: ${campoAtuacao.toString()},canSubmit: ${canSubmit.toString()}';
    return '{$string}';
  }
}
