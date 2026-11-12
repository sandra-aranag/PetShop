

import 'package:petshop/database/supabase_client.dart';
import 'package:petshop/models/cliente.dart';
import 'package:petshop/models/mascota.dart';
import 'package:petshop/models/pedido.dart';


void main() async {
  final mascota1 = Mascota(4, 'Tod', 'zorro', 1, 1000.0, true);
  mascota1.mostrarInformacion();
  print(mascota1);

  final mascota2 = Mascota(5, 'John', 'perro', 9, 10000, true);
  mascota1.mostrarInformacion();
  print(mascota2);

  final cliente1 = Cliente(1, 'Monica E.', 'monica@email.com');
  final pedido1 = Pedido(1, cliente1, mascota1, DateTime.now());
  print(pedido1.toString());

  pedido1.mostrarResumen();
  
  //Comprobación funcionamiento BBDD
  var supabase = DatabaseConfig.client;
  final mascotas = await supabase.from('mascotas').select();
  print(mascotas);

 
}