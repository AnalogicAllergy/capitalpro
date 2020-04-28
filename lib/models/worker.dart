import 'package:mobx/mobx.dart';
part 'worker.g.dart';

class Worker = _WorkerBase with _$Worker;

abstract class _WorkerBase with Store {
  @computed
  bool get canSubmit {
    return validateDescricao() == null &&
        validateEmail() == null &&
        validateEmpresa() == null &&
        validateSite() == null &&
        validateTelefone() == null &&
        validateName() == null &&
        validateCampoAtuacao() == null;
  }

  @observable
  bool isEmpresa = false;
  @action
  changeIsEmpresa(bool newValue) => isEmpresa = newValue;
  @observable
  String nome;
  @action
  changeNome(String newValue) => nome = newValue;

  @observable
  String empresa;
  @action
  changeEmpresa(String newValue) => empresa = newValue;

  @observable
  String telefone;
  @action
  changeTelefone(String newValue) => telefone = newValue;

  @observable
  String email;
  @action
  changeEmail(String newValue) => email = newValue;

  @observable
  String site;
  @action
  changeSite(String newValue) => site = newValue;

  @observable
  String descricao;
  @action
  changeDescricao(String newValue) => descricao = newValue;

  @observable
  String campoAtuacao;
  @action
  changeCampoAtuacao(String newValue) => campoAtuacao = newValue;

  String validateName() {
    if (nome == null) {
      return "Campo obrigatório";
    }
    if (nome.length < 2) {
      return "Nome deve ter pelo menos 2 caracteres";
    }
    return null;
  }

  String validateEmail() {
    if (email == null) {
      return "Email é obrigatório";
    }
    if (!RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(email)) {
      return "Insira um email válido";
    }
    return null;
  }

  String validateEmpresa() {
    if (empresa == null) {
      return "Nome da empresa é obrigatório";
    }

    return null;
  }

  String validateDescricao() {
    if (descricao == null) {
      return "Descrição dos serviços é obrigatória";
    }

    return null;
  }

  String validateCampoAtuacao() {
    final List<String> list = [
      "Advocacia",
      "Alimentação",
      "Arquitetura e Design",
      "Artesanato",
      "Consultoria",
      "Cosméticos",
      "Energia",
      "Eventos",
      "Fotografia",
      "Gráficas",
      "Imobiliárias",
      "Mídia e Comunicação",
      "Odontologia",
      "Seguros e Planos de saúde",
      "Studios e academias",
      "Turismo e Lazer",
      "Varejo",
    ];
    if (campoAtuacao == null) {
      return "Campo de atuação é obrigatório";
    }
    if (!list.contains(campoAtuacao)) {
      return "Selecione uma área válida";
    }
    return null;
  }

  String validateSite() {
    if (site == null) {
      return "Endereço do site é obrigatório";
    }
    if (!RegExp(
            r"^(?:http(s)?:\/\/)?[\w.-]+(?:\.[\w\.-]+)+[\w\-\._~:/?#[\]@!\$&'\(\)\*\+,;=.]+$")
        .hasMatch(site)) {
      return "Endereço do site é inválido";
    }

    return null;
  }

  String validateTelefone() {
    if (telefone == null) {
      return "É obrigatório informar o telefone";
    }
    if (!RegExp(r"(\(?\d{2}\)?\s)?(\d{4,5}\-\d{4})").hasMatch(telefone)) {
      return "Formato de telefone inválido";
    }
    return null;
  }
}
