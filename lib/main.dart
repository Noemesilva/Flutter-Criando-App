//atalho identar código shift + alt + f



import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    body: ListaTransferencias(),
    appBar: AppBar(
      title: Text('Transferências'),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () {  },
      child: Icon(Icons.add),
    ),
  ),
));

class ListaTransferencias extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        ItemTransferencia(Transferencia(150.00,1000)),
       
        ]
    );
  }
}

  class ItemTransferencia extends StatelessWidget {

  final Transferencia _transferencia;


  ItemTransferencia(this._transferencia);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(_transferencia.valor.toString()),
        subtitle: Text(_transferencia.numeroConta.toString()),
      ),
    );
  }
}

class Transferencia {
  final double valor;
  final int numeroConta;

  Transferencia(this.valor, this.numeroConta);
}

  
