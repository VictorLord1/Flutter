import 'package:flutter/material.dart';

class TestStack extends StatelessWidget {
  const TestStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Página stack"),
        backgroundColor: Colors.blue[200],
      ),
      //body: stackSinPos()
      body: Center(
        child:SizedBox(
          width:300.0,
          height: 300.0,
          child: Center(
            child: Stack(
              clipBehavior: Clip.antiAliasWithSaveLayer, fit: StackFit.expand,
              overflow: Overflow.visible,
              children: <Widget>[
                Container(
                  width:300.0,
                  height: 300.0,
                  color: Colors.red,
                ),
                Positioned(
                  top: 80.0,
                  left: 80.0,
                  child: Container(
                    width:250.0,
                    height:250.0,
                    color: Colors.black,
                  )
                ),
                Positioned(
                  top: 20.0,
                  left: 20.0,
                  child: Container(
                    width:200.0,
                    height:200.0,
                    color: Colors.purple,
                  )
                )
              ],
            ) 
          ),
        )
      ),
    );
  }
  Widget  stackSinPos(){
    return Center(
        child:SizedBox(
          width:300.0,
          height: 300.0,
          child: Stack(
            children: <Widget>[
              Container(
                width: 300.0,
                height: 300.0,
                color: Colors.red,
                alignment: Alignment.topRight,
                padding: const EdgeInsets.all(15.0),
                child: const Text(
                  "Uno",
                  style: TextStyle(color: Colors.white),
                  ),
              ),
              Container(
                width: 250.0,
                height: 250.0,
                color: Colors.black,
                alignment: Alignment.bottomLeft,
                padding: const EdgeInsets.all(15.0),
                child: const Text(
                  "Dos",
                  style: TextStyle(color: Colors.white),
                  ),
              ),Container(
                width: 200.0,
                height: 200.0,
                //color: Colors.purple,
                alignment: Alignment.bottomCenter,
                padding: const EdgeInsets.all(15.0),
                decoration: const BoxDecoration(
                  image:DecorationImage(
                    image:  NetworkImage("https://ih1.redbubble.net/image.1558722819.4560/bg,f8f8f8-flat,750x,075,f-pad,750x1000,f8f8f8.jpg")
                  ),
                ),
                child: const Text(
                  "Tres",
                  style: TextStyle(color: Colors.red),
                ),
              )
            ],
          ) 
        ), 
    );
  }
}