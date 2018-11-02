import obra.*
import uocra.*

class Obrero {
	var property estaDeLicencia = false
	var sumaJornada = 0
	
	method trabajarEn(obra) { sumaJornada++ }
	method debeCobrar()
	method cancelarDeuda() { sumaJornada = 0 }
}

class Albanil inherits Obrero {
	const consumoLadrillos = 100

	override method trabajarEn(obra) {
		super(obra)
		obra.consumirLadrillos(consumoLadrillos)
	}
	override method debeCobrar() = (uocra.jornalAlbanil() * sumaJornada)
	
}

class Electricista inherits Obrero {
	const consumoMetrosCable = 4
	const consumoCintaAisladora = 1

	override method trabajarEn(obra) {
		super(obra)
		obra.consumirMetrosDeCable(consumoMetrosCable)
		obra.consumirCinta(consumoCintaAisladora)
	}
	override method debeCobrar() = (uocra.jornalElectricista() * sumaJornada)
}


class Gasista inherits Obrero {
	const consumoMetrosCanios = 3
	const consumoFosforos = 20

	override method trabajarEn(obra) {
		super(obra)
		obra.consumirMetrosDeCanio(consumoMetrosCanios)
		obra.consumirFosforos(consumoFosforos)
	}
	override method debeCobrar() = (uocra.jornalGasista() * sumaJornada)
}


class Plomero inherits Obrero {
	const consumoMetrosCanio = 10
	const consumoArandelas = 30
	
	override method trabajarEn(obra) {
		super(obra)
		obra.consumirMetrosDeCanio(consumoMetrosCanio)
		obra.consumirArandelas(consumoArandelas)
	}
	override method debeCobrar() = (uocra.jornalPlomero() * sumaJornada)
}