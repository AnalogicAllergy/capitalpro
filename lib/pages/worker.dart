import 'package:capitalpro/controllers/WorkerController.dart';
import 'package:flutter/material.dart';
import 'package:capitalpro/utils/colors.dart' as OurColours;
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:searchable_dropdown/searchable_dropdown.dart';

class Worker extends StatefulWidget {
  @override
  _WorkerState createState() => _WorkerState();
}

class _WorkerState extends State<Worker> {
  _textField({
    String labelText,
    onChanged,
    String Function() errorText,
  }) {
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: labelText,
        errorText: errorText == null ? null : errorText(),
      ),
    );
  }

  final workerController = WorkerController();
  bool _isEmpresa = false;
  bool _hasSite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Cadastro de Profissionais"),
        ),
        body: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                children: <Widget>[
                  Observer(builder: (_) {
                    return _textField(
                        labelText: "Nome",
                        onChanged: workerController.worker.changeNome,
                        errorText: workerController.worker.validateName);
                  }),
                  SizedBox(
                    height: 10,
                  ),
                  Observer(builder: (_) {
                    return _textField(
                        labelText: "Empresa",
                        onChanged: workerController.worker.changeEmpresa,
                        errorText: workerController.worker.validateEmpresa);
                  }),
                  SizedBox(
                    height: 10,
                  ),
                  Observer(builder: (_) {
                    return _textField(
                        labelText: "Email",
                        onChanged: workerController.worker.changeEmail,
                        errorText: workerController.worker.validateEmail);
                  }),
                  SizedBox(
                    height: 10,
                  ),
                  Observer(builder: (_) {
                    return _textField(
                        labelText: "Telefone",
                        onChanged: workerController.worker.changeTelefone,
                        errorText: workerController.worker.validateTelefone);
                  }),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text("Possui empresa?"),
                      Switch.adaptive(
                          value: _isEmpresa,
                          onChanged: (newValue) {
                            setState(() {
                              _isEmpresa = newValue;
                            });
                          })
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Visibility(
                    visible: _isEmpresa,
                    child: Observer(
                      builder: (_) {
                        return _textField(
                            labelText: "Nome da empresa",
                            onChanged: workerController.worker.changeEmpresa,
                            errorText: workerController.worker.validateEmpresa);
                      },
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text("Possui site?"),
                      Switch.adaptive(
                          value: _hasSite,
                          onChanged: (newValue) {
                            setState(() {
                              _hasSite = newValue;
                            });
                          })
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Visibility(
                    visible: _hasSite,
                    child: Observer(
                      builder: (_) {
                        return _textField(
                            labelText: "Site",
                            onChanged: workerController.worker.changeSite,
                            errorText: workerController.worker.validateSite);
                      },
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Observer(
                    builder: (_) {
                      return _textField(
                          labelText: "Descrição dos serviços",
                          onChanged: workerController.worker.changeDescricao,
                          errorText: workerController.worker.validateDescricao);
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Observer(builder: (_) {
                    return _buildDropDown(workerController);
                  }),
                  SizedBox(
                    height: 10,
                  ),
                  Observer(builder: (_) {
                    return InkWell(
                      onTap: workerController.worker.canSubmit
                          ? () {
                              print("Success muthafucka");
                            }
                          : null,
                      child: Container(
                        height: 44,
                        width: MediaQuery.of(context).size.width - 60,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: workerController.worker.canSubmit
                                    ? Color(OurColours.ourBlue)
                                    : Colors.red),
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white),
                        child: Center(
                          child: Text(
                            workerController.worker.canSubmit
                                ? "Cadastrar"
                                : "Aguardando...",
                            style: GoogleFonts.lato(
                                fontSize: 18,
                                color: workerController.worker.canSubmit
                                    ? Color(OurColours.ourBlue)
                                    : Colors.red),
                          ),
                        ),
                      ),
                    );
                  }),
                ],
              ),
            ),
          ],
        ));
  }
}

Widget _buildDropDown(WorkerController controller) {
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
  List<DropdownMenuItem> items = [];
  list.forEach((word) {
    items.add(DropdownMenuItem(
      child: Text(word),
      value: word,
    ));
  });
  return SearchableDropdown.single(
      items: items,
      hint: "Selecione uma especialidade",
      searchHint: "Busque por nome",
      onChanged: controller.worker.changeCampoAtuacao);
}
