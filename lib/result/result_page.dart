import 'package:devquiz/challenge/widgets/next_button/next_button_widget.dart';
import 'package:devquiz/core/core.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final String title;
  final int length;
  final int result;

  const ResultPage({
    Key? key,
    required this.title,
    required this.length,
    required this.result
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        padding: EdgeInsets.only(top: 60),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(AppImages.trophy),
            Column(
              children: [
                Text(
              "Parabéns!",
              style: AppTextStyles.heading40,
            ),
            SizedBox(height: 16),
            Text.rich(
              TextSpan(
                  text: "Você concluiu",
                  style: AppTextStyles.body,
                  children: [
                    TextSpan(
                      text: "\n$title",
                      style: AppTextStyles.bodyBold,
                    ),
                    TextSpan(
                      text: "\ncom $result de $length acertos",
                      style: AppTextStyles.body,
                    ),
                  ]),
              textAlign: TextAlign.center,
            ),
              ],
            ),
            Column(
              children: [
                Row(
              children: [
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 68),
                  child: NextButtonWidget.purple(
                      label: "Compartilhar", onTap: () {}),
                )),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 68),
                  child: NextButtonWidget.white(
                      label: "Voltar ao Início",
                      onTap: () {
                        Navigator.pop(context);
                      }),
                )),
              ],
            ),
              ],
            )
          ],
        ),
      ),
    );
  }
}