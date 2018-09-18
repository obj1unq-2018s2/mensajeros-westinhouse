object mensajeria {
	var property mensajeros = []
	method contratar(alguien) {
 		mensajeros.add(alguien)
 	}
}

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

//MENSAJEROS

object roberto{
	
	method peso(vehiculo){ return 90 + vehiculo.peso()}
	method puedeLlamar() = false
	method entregarPaquete(paquete, destino){
		destino.recibirEnvio(paquete)
	}
	
}

object chuckNorris{
	method peso() = 900
	method puedeLlamar() = true
	method entregarPaquete(paquete, destino){
		destino.recibirEnvio(paquete)
	}
}

object neo{
	
	var property tieneCredito = false
	method peso() = 0
	method puedeLlamar() = tieneCredito
	method entregarPaquete(paquete, destino){
		destino.recibirEnvio(paquete)
	}
}

//PAQUETE

object paquete{
	var property estaPago = null
	var property destino = null
	method pagar(){ estaPago = true}
}

//DESTINOS

object puenteDeBrooklyn{
	var paquetesRecibidos = []
	method recibirEnvio(paquete){
		if(paquete.peso() <= 1000){
			paquetesRecibidos.add(paquete)
		}
	}
}
	
object matrix{
	var paquetesRecibidos = []
    var  property mensajero = null
	method recibirEnvio(paquete){
		if(mensajero.puedeLlamar()){
			paquetesRecibidos.add(paquete)
		}
	}
}
