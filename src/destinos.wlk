//DESTINOS

object puenteDeBrooklyn{
	method puedeRecibirEnvio(mensajero){
		return mensajero.peso() <= 1000
	}
}
	
object matrix{
	method puedeRecibirEnvio(mensajero){
		return mensajero.puedeLlamar()
	}
}
