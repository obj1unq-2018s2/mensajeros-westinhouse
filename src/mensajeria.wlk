//EMPRESA DE MENSAJERIA

object mensajeria {
	var mensajeros = []
	
	method mensajeros() = mensajeros
	method contratar(alguien) {
 		mensajeros.add(alguien)
 	}
 	method despedir(alguien){
 		mensajeros.remove(alguien)
 	}
 	method vaciarPlanta(){
 		mensajeros = []
 	}
 	method esMensajeriaGrande(){ return mensajeros.size() > 2}
 	
 	method primerMensajeroPuedeEntregar(destino){
 	/* Este método le pregunta al destino dado por parametro si bajo sus criterios particulares, 
 	el primer mensajero de la empresa ("mensajeros.first()"), podra realizar el envío a dicho lugar.*/
 		return destino.puedeRecibirEnvio(mensajeros.first())
 	}
 	method pesoUltimoMensajero(){
 		return mensajeros.last().peso()
 	}
}