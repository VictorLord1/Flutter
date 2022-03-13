import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({Key? key}) : super(key: key);

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  bool _isChecked = false;
  late TextEditingController _controller;
  var _maskCard = MaskTextInputFormatter(
      mask: '####-####-####-####', filter: {"#": RegExp(r'[0-9]')});
  var _maskCardF =
      MaskTextInputFormatter(mask: '##/##', filter: {"#": RegExp(r'[0-9]')});

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
      body: Center(
        child: Form(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              const SizedBox(
                height: 0.0,
              ),
              Container(
                width: 310.0,
                height: 190.0,
                //color: Colors.red,
                padding: const EdgeInsets.all(15.0),
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://images.ctfassets.net/h7wmg0jhythh/1XbCjsKK2aESMBVcev32sK/d1286c1ee81faa75da2c64b56a1bdffe/BSC_-_Visa_debito.png'))),
              ),

              inputName(_controller),
              const SizedBox(height: 10),
              inputCard(_maskCard),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 0.0),
                margin: const EdgeInsets.symmetric(horizontal: 0.0),
                height: 100.0,
                child: Row(children: [
                  inputCardF(_maskCardF),
                  const SizedBox(height: 10),
                  inputExp(),
                  const SizedBox(height: 10),
                ]),
              ),

//////////////////////////BOTON PAGAR //////////////////////////////////////////
              const SizedBox(height: 10),
              ElevatedButton(onPressed: () => {}, child: const Text('Pagar'))
            ])),
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
        border: Border.all(color: Colors.grey, width: 2.0)),
    child: TextFormField(
      keyboardType: TextInputType.number,
      inputFormatters: [
        //FilteringTextInputFormatter.allow(RegExp('[0-9 -]')),
        //LengthLimitingTextInputFormatter(16)
        _maskCard
      ],
      decoration: const InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(Icons.credit_card),
          labelText: 'Tarjeta',
          hintText: '1234-1234-1234-1234'),
    ),
  );
}

Widget inputCardF(_maskCardF) {
  return Container(
    width: 135.0,
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    margin: const EdgeInsets.symmetric(horizontal: 30.0),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey, width: 2.0)),
    child: TextFormField(
      keyboardType: TextInputType.number,
      inputFormatters: [
        //FilteringTextInputFormatter.allow(RegExp('[0-9 -]')),
        //LengthLimitingTextInputFormatter(16)
        _maskCardF
      ],
      decoration: const InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(Icons.date_range),
          labelText: 'Expiracion',
          hintText: '12/12'),
    ),
  );
}

Widget inputExp() {
  return Container(
    width: 135.0,
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    margin: const EdgeInsets.symmetric(horizontal: 30.0),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey, width: 2.0)),
    child: TextFormField(
      obscureText: true,
      keyboardType: TextInputType.number,
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp('[0-9 -]')),
        LengthLimitingTextInputFormatter(3)
      ],
      decoration: const InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(Icons.power_input_sharp),
          labelText: 'CVV',
          hintText: '123'),
    ),
  );
}

Widget inputName(_controller) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    margin: const EdgeInsets.symmetric(horizontal: 30.0),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey, width: 2.0)),
    child: TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: true,
      controller: _controller,
      decoration: const InputDecoration(
          border: InputBorder.none,
          //icon: Icon(Icons.contact_mail),
          prefixIcon: Icon(Icons.person),
          labelText: 'Nombre',
          hintText: 'Nombre de la tarjeta'),
    ),
  );
}
