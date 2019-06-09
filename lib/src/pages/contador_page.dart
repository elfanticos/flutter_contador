import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  _ContadorPageState createState() => _ContadorPageState();
 }
class _ContadorPageState extends State<ContadorPage> {
  final TextStyle estiloTexto = TextStyle(fontSize: 25);
  int _contador = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StateFul'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Numero de clicks:', style: estiloTexto,),
            Text('$_contador', style: estiloTexto,)
          ],
        ),
      ),
      floatingActionButton: _crearBotones(),
    );
  }


  // Crear funciones costumizadas
  Widget _crearBotones() {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        SizedBox(width: 30.0,),
        FloatingActionButton(child: Icon(Icons.exposure_zero),onPressed: () => reset(),),
        Expanded(child: SizedBox(width: 5.0,),),
        FloatingActionButton(child: Icon(Icons.remove),onPressed: () => decremet(),),
        SizedBox(width: 5.0,),
        FloatingActionButton(child: Icon(Icons.add),onPressed: () => incremet(),),
      ],
    );
  }

  // Incrementar contador
  void incremet() {
    setState(() {
      _contador++;
    });
  }

  // Decrementar contador
  void decremet() {
    setState(() {
      _contador--;
    });
  }

  // Resetear contador
  void reset() {
    setState(() {
      _contador = 0;
    });
  }
}