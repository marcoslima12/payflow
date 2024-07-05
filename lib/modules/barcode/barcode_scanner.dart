import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';
import 'package:payflow/shared/widgets/set_label_buttons/set_label_buttons.dart';

import '../../shared/widgets/bottom_sheet_widget/bottom_sheet.dart';

class BarCodePage extends StatefulWidget {
  const BarCodePage({super.key});

  @override
  State<BarCodePage> createState() => _BarCodePageState();
}

class _BarCodePageState extends State<BarCodePage> {
  @override
  Widget build(BuildContext context) {
    return BottomSheetWidget(
      primaryLabel: "Escanear novamente",
      primaryOnPressed: () {},
      secondaryLabel: "Digitar código",
      secondaryOnPressed: () {},
      title: "Não foi possível identificar um código de barras",
      subtitle: "Tente escanear novamente ou digite o código do seu boleto",
    );
    return SafeArea(
        top: true,
        left: true,
        right: true,
        bottom: true,
        child: RotatedBox(
          quarterTurns: 1,
          child: Scaffold(
              appBar: AppBar(
                centerTitle: true,
                backgroundColor: Colors.black,
                title: Text("Escaneie o código de barras do boleto",
                    style: TextStyles.buttonBackground),
                leading: const BackButton(color: AppColors.background),
              ),
              body: Column(
                children: [
                  Expanded(
                      child: Container(
                    color: Colors.black,
                  )),
                  Expanded(
                      flex: 2,
                      child: Container(
                        color: Colors.white,
                      )),
                  Expanded(
                      child: Container(
                    color: Colors.black,
                  ))
                ],
              ),
              bottomNavigationBar: SetLabelButtons(
                primaryLabel: "Inserir código do boleto",
                secondaryLabel: "Adicionar imagem da galeria",
                primaryOnPressed: () {},
                secondaryOnPressed: () {},
              )),
        ));
  }
}
//Na rota de home, direciomei o "clicou" pra barcode