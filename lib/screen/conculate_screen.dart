import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../view_model/conculate_view_model.dart';

class ConculateScreen extends StatefulWidget {
  const ConculateScreen({super.key});

  @override
  State<ConculateScreen> createState() => _ConculateScreenState();
}

class _ConculateScreenState extends State<ConculateScreen> {
  Widget calculatorButton({
    required String buttonText,
    required Color buttonColor,
    required Color textColor,
  }) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: buttonColor,
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 20,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
      ),
      onPressed: () {
        context.read<CalculatorViewModels>().calculation(buttonText);
      },
      child: Text(
        buttonText,
        style: TextStyle(
          fontSize: 24,
          color: Colors.black,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          Expanded(child: Consumer<CalculatorViewModels>(
            builder: (BuildContext context, CalculatorViewModels value,
                Widget? child) {
              return Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Text(
                    value.text,
                    style: AppTextStyle.number,
                  ),
                ),
              );
            },
          )),
          Container(
            decoration: const BoxDecoration(
                color: Color(0xFFE9F6FF),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                )),
            child: Container(
              margin: const EdgeInsets.only(bottom: 40, top: 70),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: calculatorButton(
                          buttonText: 'C',
                          buttonColor: const Color(0xFFE9F6FF),
                          textColor: Colors.white,
                        ),
                      ),
                      Expanded(
                        child: calculatorButton(
                          buttonText: '%',
                          buttonColor: const Color(0xFFE9F6FF),
                          textColor: Colors.white,
                        ),
                      ),
                      Expanded(
                        child: calculatorButton(
                          buttonText: '<',
                          buttonColor: const Color(0xFFE9F6FF),
                          textColor: Colors.white,
                        ),
                      ),
                      Expanded(
                        child: calculatorButton(
                          buttonText: '/',
                          buttonColor: const Color(0xFFE9F6FF),
                          textColor: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: calculatorButton(
                          buttonText: '7',
                          buttonColor: const Color(0xFFE9F6FF),
                          textColor: Colors.white,
                        ),
                      ),
                      Expanded(
                        child: calculatorButton(
                          buttonText: '8',
                          buttonColor: const Color(0xFFE9F6FF),
                          textColor: Colors.white,
                        ),
                      ),
                      Expanded(
                        child: calculatorButton(
                          buttonText: '9',
                          buttonColor: const Color(0xFFE9F6FF),
                          textColor: Colors.white,
                        ),
                      ),
                      Expanded(
                        child: calculatorButton(
                          buttonText: 'x',
                          buttonColor: const Color(0xFFE9F6FF),
                          textColor: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: calculatorButton(
                          buttonText: '4',
                          buttonColor: const Color(0xFFE9F6FF),
                          textColor: Colors.white,
                        ),
                      ),
                      Expanded(
                        child: calculatorButton(
                          buttonText: '5',
                          buttonColor: const Color(0xFFE9F6FF),
                          textColor: Colors.white,
                        ),
                      ),
                      Expanded(
                        child: calculatorButton(
                          buttonText: '6',
                          buttonColor: const Color(0xFFE9F6FF),
                          textColor: Colors.white,
                        ),
                      ),
                      Expanded(
                        child: calculatorButton(
                          buttonText: '-',
                          buttonColor: const Color(0xFFE9F6FF),
                          textColor: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: calculatorButton(
                          buttonText: '1',
                          buttonColor: const Color(0xFFE9F6FF),
                          textColor: Colors.white,
                        ),
                      ),
                      Expanded(
                        child: calculatorButton(
                          buttonText: '2',
                          buttonColor: const Color(0xFFE9F6FF),
                          textColor: Colors.white,
                        ),
                      ),
                      Expanded(
                        child: calculatorButton(
                          buttonText: '3',
                          buttonColor: const Color(0xFFE9F6FF),
                          textColor: Colors.white,
                        ),
                      ),
                      Expanded(
                        child: calculatorButton(
                          buttonText: '+',
                          buttonColor: const Color(0xFFE9F6FF),
                          textColor: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: calculatorButton(
                          buttonText: '.',
                          buttonColor: const Color(0xFFE9F6FF),
                          textColor: Colors.white,
                        ),
                      ),
                      Expanded(
                        child: calculatorButton(
                          buttonText: '0',
                          buttonColor: const Color(0xFFE9F6FF),
                          textColor: Colors.white,
                        ),
                      ),
                      Expanded(
                        child: calculatorButton(
                          buttonText: '=',
                          buttonColor: const Color(0xFFE9F6FF),
                          textColor: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}

class AppTextStyle {
  static const TextStyle number = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
  );
}
