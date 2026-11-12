import 'package:petshop/models/cliente.dart';
import 'package:petshop/models/mascota.dart';

class Pedido {

  int _id;
  Cliente _cliente;
  Mascota _mascota;
  DateTime _fecha;

  Pedido(
    this._id,
    this._cliente,
    this._mascota,
    this._fecha,
  );

  int get id => _id;
  Cliente get cliente => _cliente;
  Mascota get mascota => _mascota;
  DateTime get fecha => _fecha;

  set id(int value) {
    if(value >= 0)
    _id = value;
  }

  set cliente(Cliente value) {
    _cliente = value;
  }

  set mascota(Mascota value) {
    _mascota = value;
  }

  set fecha(DateTime value) {
    _fecha = value;
  }


  @override
  String toString(){
    
    String c = cliente.toString();
    String m = mascota.toString();

    return '$c compra $m';

  }


  void mostrarResumen(){
    print('''

==== PEDIDO ====\n
Cliente: $cliente\n
Mascota: $mascota\n
Precio: ${mascota.precio} €\n
Fecha: $fecha''');

  }

}