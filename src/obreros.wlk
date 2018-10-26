import obras.*

class Obrero {
	var bLicencia = false
	var diasAdeudados = 0
	
	
	method estaDelicencia() { return bLicencia }
	method ponerLicencia() { bLicencia = true }
	method sacarLicencia() { bLicencia = false }
	method trabajar(obra) {
		diasAdeudados++
	}
	method sueldo()

}

class Albanil inherits Obrero {
	var ladrillos = 100
	var aporta = 3
	
	override method trabajar(obra) {
		super(obra)
		obra.sacarLadrillos(ladrillos)
		obra.aportarPared(aporta)
	}
	override method sueldo() {
		jornalAlbanil()
	}
		
}

class Gasista inherits Obrero {
	var canios = 3
	var fosforos = 20
	var aporta = 3
	
	override method trabajar(obra) {
		super(obra)
		obra.sacarCanio(canios)
		obra.sacarFosforo(fosforos)
		obra.aportarCanio(aporta)
	}
	 
}

class Plomero inherits Obrero {
	var canios = 10
	var arandelas = 30
	var aporta = 9
	var desperdicio = 1
	
	override method trabajar(obra) {
		super(obra)
		obra.sacarCanio(canios)
		obra.sacarArandelas(arandelas)
		obra.aportarCanio(aporta)
	}
	
}

class Electricista inherits Obrero {
	var cables = 4
	var cinta = 1
	var aporta = 4
	
	override method trabajar(obra) {
		super(obra)
		obra.sacarCables(cables)
		obra.sacarCinta(cinta)
		obra.aportarCable(aporta)
	}
}
