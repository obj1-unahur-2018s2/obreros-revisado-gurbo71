import obra.*

class Obrero {
	var property estaDeLicencia = false
	var cantDias = 0
	
	method trabajarEn(obra) { cantDias++ }
}

class Albanil inherits Obrero {
	const consumoLadrillos = 100

	override method trabajarEn(obra) {
		super(obra)
		obra.consumirLadrillos(consumoLadrillos)
	}
}

class Electricista inherits Obrero {
	const consumoMetrosCable = 4
	const consumoCintaAisladora = 1

	override method trabajarEn(obra) {
		super(obra)
		obra.consumirMetrosDeCable(consumoMetrosCable)
		obra.consumirCinta(consumoCintaAisladora)
	}
}


class Gasista inherits Obrero {
	const consumoMetrosCanios = 3
	const consumoFosforos = 20

	override method trabajarEn(obra) {
		super(obra)
		obra.consumirMetrosDeCanio(consumoMetrosCanios)
		obra.consumirFosforos(consumoFosforos)
	}
}


class Plomero inherits Obrero {
	const consumoMetrosCanio = 10
	const consumoArandelas = 30
	
	override method trabajarEn(obra) {
		super(obra)
		obra.consumirMetrosDeCanio(consumoMetrosCanio)
		obra.consumirArandelas(consumoArandelas)
	}
}