//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  late TextEditingController _controller;

  final _maskCard = MaskTextInputFormatter(
      mask: '####-####-####-####', filter: {"#": RegExp(r'[0-9]')});
  final _maskExp = MaskTextInputFormatter(mask: "##/##");
  final _maskCVV = MaskTextInputFormatter(mask: "###");

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
            child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 0.0),
                margin: const EdgeInsets.symmetric(horizontal: 0.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const SizedBox(height: 90.0),
                    const SizedBox(height: 50),
                    inputName(_controller),
                    const SizedBox(height: 25),
                    inputCard(_maskCard),
                    const SizedBox(height: 15),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 0.0),
                      margin: const EdgeInsets.symmetric(horizontal: 0.0),
                      height: 100.0,
                      child: Row(children: [
                        inputExpiration(_maskExp),
                        inputCVV(_maskCVV),
                      ]),
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                        onPressed: () => {}, child: const Text('Siguiente')),
                  ],
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}

Widget inputCard(_maskCard) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    margin: const EdgeInsets.symmetric(horizontal: 30.0),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border:
            Border.all(color: Color.fromARGB(255, 154, 168, 245), width: 2.0)),
    child: TextFormField(
      keyboardType: TextInputType.number,
      inputFormatters: [
        /*FilteringTextInputFormatter.allow(RegExp('[0-9 -]')), 
        LengthLimitingTextInputFormatter(16)*/
        _maskCard
      ],
      decoration: const InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(Icons.credit_card),
          labelText: 'Número de tarjeta',
          hintText: '1234-1234-1234-1234'),
    ),
  );
}

Widget inputName(_controller) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    margin: const EdgeInsets.symmetric(horizontal: 30.0),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border:
            Border.all(color: Color.fromARGB(255, 154, 168, 245), width: 2.0)),
    child: TextFormField(
      keyboardType: TextInputType.text,
      autofocus: true,
      controller: _controller,
      decoration: const InputDecoration(
        border: InputBorder.none,
        prefixIcon: Icon(Icons.face),
        labelText: 'Nombre',
      ),
    ),
  );
}

Widget inputExpiration(_maskExp) {
  return Container(
    width: 130.0,
    padding: const EdgeInsets.symmetric(horizontal: 0.0),
    margin: const EdgeInsets.symmetric(horizontal: 30.0),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border:
            Border.all(color: Color.fromARGB(255, 154, 168, 245), width: 2.0)),
    child: TextFormField(
      obscureText: false,
      keyboardType: TextInputType.number,
      inputFormatters: [_maskExp],
      decoration: const InputDecoration(
        border: InputBorder.none,
        prefixIcon: Icon(Icons.calendar_month),
        labelText: 'Expiración',
      ),
    ),
  );
}

Widget inputCVV(_maskCVV) {
  return Container(
    width: 110.0,
    padding: const EdgeInsets.symmetric(horizontal: 0.0),
    margin: const EdgeInsets.symmetric(horizontal: 30.0),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border:
            Border.all(color: Color.fromARGB(255, 154, 168, 245), width: 2.0)),
    child: TextFormField(
      obscureText: true,
      keyboardType: TextInputType.number,
      inputFormatters: [_maskCVV],
      decoration: const InputDecoration(
        border: InputBorder.none,
        prefixIcon: Icon(Icons.security),
        labelText: 'CVV',
      ),
    ),
  );
}
