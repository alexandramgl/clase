import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_emoji/flutter_emoji.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class MyStateFulWidget extends StatefulWidget {
  MyStateFulWidget({Key? key}) : super(key: key);

  @override
  State<MyStateFulWidget> createState() => _MyStateFulWidgetState();
}

class _MyStateFulWidgetState extends State<MyStateFulWidget> {
  late TextEditingController _controller; //definir el tipo de variable con late
  bool _isChecked = false;
  var maskFormatter = new MaskTextInputFormatter(
      mask: '####-####-####-####', filter: {"#": RegExp(r'[0-9]')});

  @override
  void initState() {
    //TODO: implement initState
    super.initState();
    _controller = TextEditingController(); //creando instancia del método
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  /*@override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        padding: const EdgeInsets.all(25.0),
        child: TextField(
            autofocus: true,
            controller:
                _controller, //guión bajo para diferenciar de la propiedad
            onSubmitted: (String value) async {
              await showDialog<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Prueba diálogo'),
                      content: Text(
                          'Ha escrito "$value",de longitud: ${value.characters.length}'),
                      actions: <Widget>[
                        TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text('Ok'))
                      ],
                    );
                  });
            }),
      ),
    ));
  }
}*/

  /* @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                  keyboardType: TextInputType.emailAddress,
                  autofocus: true,
                  controller: _controller,
                  decoration: const InputDecoration(
                      //icon: Icon(Icons.contact_mail),
                      prefixIcon: Icon(Icons.contact_mail),
                      labelText: 'Correo',
                      hintText: 'micorreo@correo.com')),
              const SizedBox(height: 20.0),
              const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      //icon: Icon(Icons.contact_mail),
                      prefixIcon: Icon(Icons.lock),
                      labelText: 'Contraseña',
                      hintText: '*******')),
              const SizedBox(height: 20.0),
              TextField(
                keyboardType: TextInputType.number,
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp('[0-9]')),
                  LengthLimitingTextInputFormatter(16)
                ],
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.credit_card),
                    labelText: 'Tarjeta',
                    hintText: '1234-1234-1234-1234'),
              ),
              const SizedBox(height: 20.0),
              Text("Chayanne es vida 💞"),
              Checkbox(
                  value: false,
                  onChanged: (bool? value) {
                    setState(() {
                      _isChecked = value!;
                    });
                  })
            ],
          ),
        ),
      ),
    );
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            inputEmail(_controller),
            SizedBox(height: 10),
            inputPassword(_controller),
            SizedBox(height: 10),
            inputCard(_controller),
            SizedBox(height: 10),
          ],
        )),
      ),
    );
  }

  Widget inputEmail(_controller) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey, width: 20.0)),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        autofocus: true,
        controller: _controller,
        decoration: const InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(Icons.contact_mail),
            labelText: 'Correo',
            hintText: 'micorreo@correo.com'),
      ),
    );
  }

  Widget inputPassword(_controller) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey, width: 20.0)),
      child: TextFormField(
        obscureText: true,
        decoration: const InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(Icons.contact_mail),
            labelText: 'Contraseña',
            hintText: '********'),
      ),
    );
  }

  Widget inputCard(_controller) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey, width: 20.0)),
      child: TextFormField(
          keyboardType: TextInputType.number,
          inputFormatters: [maskFormatter],
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.credit_card),
              labelText: 'Tarjeta',
              hintText: '1234-1234-1234-1234')),
    );
  }
}
