import 'package:flutter/material.dart';
// página de datos

class Datos extends StatelessWidget {
  const Datos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Datos'),
        backgroundColor: const Color.fromARGB(255, 0, 133, 88),
        centerTitle: true,
        elevation: 20.0,
        shadowColor: const Color.fromARGB(255, 0, 255, 76),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(15))),
      ),
      body: Center(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 20.0,
              ),
              Image.asset("assets/img/VD.jpg", width: 370.0),
              const Text('Tecnologias de la informacion y comunicacion',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w900,
                  ),
                  textAlign: TextAlign.center),
              const SizedBox(height: 10.0),
              const Text(
                'Gordillo Resendiz Victor David',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              const SizedBox(height: 10.0),
              const Text(
                'Grupo: TI02SM-20',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        const Color.fromARGB(255, 30, 184, 55)),
                    padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 15)),
                    textStyle: MaterialStateProperty.all(
                        const TextStyle(fontSize: 15))),
                child: const Text('Regresar'),
                onPressed: () => Navigator.pop(context),
              )
            ]),
      ),
    );
  }
}
