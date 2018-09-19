// MEDIOS DE TRANSPORTE

object bicicleta{
	method peso() = 8
}

object camion{
	var property cantAcoplados = 1
	//Esta variable me permite tanto setear como indicar la cantidad de acoplados que tendra el camion.
	
	method peso(){
		return 500 * cantAcoplados
	}
}
