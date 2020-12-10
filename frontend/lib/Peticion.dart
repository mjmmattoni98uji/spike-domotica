class Peticion {
  final String idPeticion;
  final String nombre;
  final String descripcion;

  Peticion({
    this.idPeticion, this.nombre, this.descripcion
});

  factory Peticion.fromJson(Map<String, dynamic> json){
    return Peticion(
      idPeticion: json['idPeticion'],
      nombre: json['nombre'],
      descripcion: json['descripcion']
    );
  }
}