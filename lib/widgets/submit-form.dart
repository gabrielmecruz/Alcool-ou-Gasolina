import 'package:aog/widgets/input.widget.dart';
import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_masked_text/flutter_masked_text.dart';

import 'loading-button.widget.dart';

class SubmitForm extends StatelessWidget {
  var etaController = new MoneyMaskedTextController();
  var gasController = new MoneyMaskedTextController();
  var busy = false;
  Function()? submitFunc;

  SubmitForm({
    required this.etaController,
    required this.gasController,
    required this.busy,
    required this.submitFunc,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(
            left: 30,
            right: 30,
          ),
          child: Input(
            label: "Álcool",
            controller: etaController,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 30,
            right: 30,
          ),
          child: Input(
            label: "Gasolina",
            controller: gasController,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        LoadingButton(
          busy: busy,
          invert: false,
          func: submitFunc,
          text: "Calcular",
        ),
      ],
    );
  }
}
