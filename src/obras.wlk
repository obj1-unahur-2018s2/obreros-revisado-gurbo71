import obreros.*

class Obra {
	var cantLadrillos = 0
	var cable = 0
	var fosforos = 0
	var arandelas = 0
	var canio = 0
	var cinta = 0
	var plantilla = []
	var cantPared = 0
	var cantCanio = 0
	var cantCable = 0
		
	method ladrillos() { return cantLadrillos }
	method ladrillos(cant) { cantLadrillos = cant }
	method sacarLadrillos(cant) { cantLadrillos -= cant }
	
	method cable() { return cable }
	method cable(cant) { cable = cant }
	method sacarCable(cant) { cable -= cant }
		
	method fosforos() { return fosforos }
	method fosforos(cant) { fosforos = cant }
	method sacarFosforo(cant) { fosforos -= cant }
	
	method arandelas() { return arandelas }
	method arandelas(cant) { arandelas = cant }
	method sacarArandelas(cant) { arandelas -= cant }
	
	method canio() { return canio }
	method canio(cant) { canio = cant }
	method sacarCanio(cant) { canio -= cant }
	
	method cinta() { return cinta }
	method cinta(cant) { cinta = cant }
	method sacarCinta(cant) { cinta -= cant }
	
	method agregarAPlantilla(obrero) { plantilla.add(obrero) }
	method sacarDePlantilla(obrero) { plantilla.remove(obrero) }
	
	method ponerATrabajar(obrero) {
		obrero.trabajar(self)		
	}
	
	method ponerEnLicencia(obrero) {
		obrero.ponerLicencia()
	}
	
	method aportarPared(cant) {	cantPared -= cant }
	method aportarCanio(cant) { cantCanio -= cant }
	method aportarCable(cant) { cantCable -= cant }
	
	method iniciarJornada(){
		if (plantilla.size() > 0){
			plantilla.forEach({obreros =>
				if(!plantilla.ponerLicencia()){
					plantilla.ponerATrabajar(self)
				}
			})
		}
	}
	
	
}
