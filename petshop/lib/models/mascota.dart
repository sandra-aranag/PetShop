
class Mascota {

  int _id;
  String _nombre;
  String _especie;
  int _edad;
  double _precio;
  bool _disponible;

  Mascota(
    this._id,
    this._nombre,
    this._especie,
    this._edad,
    this._precio,
    this._disponible
  );


  Mascota.vacia()
      : _id = 0,
        _nombre = '',
        _especie = '',
        _edad = 0,
        _precio = 0.0,
        _disponible = false;


  int get id => _id;
  String get nombre => _nombre;
  String get especie => _especie;
  int get edad => _edad;
  double get precio => _precio;
  bool get disponible => _disponible;

  set id(int value) {
    if(value >= 0)
    _id = value;
  }

  set nombre(String value) {
    if(value.isNotEmpty)
    _nombre = value;
  } 
  set especie(String value) {
    if(value.isNotEmpty)
    _especie = value;
  } 
  set edad(int value) {
    if(value >= 0)
    _edad = value;
  }
  set precio(double value) {
    if(value >= 0)
    _precio = value;
  }
  set disponible(bool value) {
    if(value != null)
    _disponible = value;
  }



    void mostrarInformacion(){
      print(
        '$nombre ($especie) - $edad años - $precio €'
      );
    }
    
    @override
    String toString(){
      return '$nombre ($especie)';
    }


}