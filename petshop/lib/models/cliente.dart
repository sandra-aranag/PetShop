
class Cliente {

  int id;
  String nombre;
  String email;

  Cliente(
    this.id,
    this.nombre,
    this.email,
  );

 
  @override
  String toString() {
    return '$nombre - $email';
  }
   

}