//MENSAJEROS

object roberto{
	var property paquete
	
	method peso(vehiculo){ return 90 + vehiculo.peso()}
	method puedeLlamar() = false
	method cargarPaquete(paqueteParaEnviar){ paquete = paqueteParaEnviar}
	
}

object chuckNorris{
	method peso() = 900
	method puedeLlamar() = true

}

object neo{
	
	var property tieneCredito = false
	method peso() = 0
	method puedeLlamar() = tieneCredito

}

//PAQUETE

object paquete{
	var property estaPago = null
	var property destino = null
	method pagar(){ estaPago = true}
}

