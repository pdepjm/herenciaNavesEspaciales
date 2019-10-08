class NaveDeCarga {

	var velocidad = 0
	var carga = 0

	method sobrecargada() = carga > 100000

	method excedidaDeVelocidad() = velocidad > 100000

	method recibirAmenaza() {
		carga = 0
	}

}

class NaveDePasajeros {

	var velocidad = 0
	var alarma = false
	const cantidadDePasajeros

	method tripulacion() = cantidadDePasajeros + 4

	method velocidadMaxima() = 600 * self.tripulacion() + if (cantidadDePasajeros > 50) 200 else 0

	method estaEnPeligro() = velocidad > self.velocidadMaxima() or alarma

	method recibirAmenaza() {
		alarma = true
	}

}

class NaveCombate {
	var velocidad = 0
	var property modo = reposo
	const property mensajesEmitidos = []

	method emitirMensaje(mensaje) {
		mensajesEmitidos.add(mensaje)
	}

	method estaInvisible() = velocidad < 10000 and modo.invisible()

	method recibirAmenaza() {
		modo.recibirAmenaza(self)
	}

}

object reposo {

	method invisible() = false

	method recibirAmenaza(nave) {
		nave.emitirMensaje("RETIRADAAAAAA")
	}

}

object ataque {

	method invisible() = true

	method recibirAmenaza(nave) {
		nave.emitirMensaje("Enemigo encontrado")
	}

}

