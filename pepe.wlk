import categorias.*
import bonos.*

object pepe {
	var categoria = gerente
	var bonoPresentismo = bonoNulo
	var bonoResultado = bonoNulo
	var cantidadDeFaltas = 0
	
	method sueldo() {
		return self.sueldoNeto() + bonoPresentismo.monto(self) + bonoResultado.monto(self)
	}

	
	method sueldoNeto() { 
		return categoria.neto() 
	}

	method cambioDeCatergoria(_categoria) {
		categoria = _categoria
	}	

	method cambioDebonoPresentismo(_bono) {
		bonoPresentismo = _bono
	}

	method cambioDebonoResultado(_bono) {
		bonoResultado = _bono
	}

	method cantidadDeFaltas() { 
		return cantidadDeFaltas
	}

	method faltando() {
		cantidadDeFaltas = cantidadDeFaltas + 1
	}
}
//------------------------------------------------------------------------

object sofia {

	var categoria = gerente
	var bonoResultado = bonoNulo

	method sueldo() {
		return self.sueldoNeto() + bonoResultado.monto(self)
	}

	method sueldoNeto() { 
		return categoria.neto() * 1.3
	}

	method cambioDebonoResultado(_bono) {
		bonoResultado = _bono
	}

	method cambioDeCatergoria(_categoria) {
		categoria = _categoria
	}
}
//-----------roque--------------------------------------------------
object roque {
	const neto = 28000
	const bonoResultado = bonoNulo


	method sueldo() {
		return neto + bonoResultado.monto(self) + 9000
	}
}


object ernesto {
	var companiero = pepe
	const neto = companiero.sueldoNeto()
	const bonoPresentismo = bonoNulo

	method cambiarCompaniero(_compa) {
		companiero=_compa
	}

	method sueldo() {
		return neto + bonoPresentismo.monto(self) 
	}
}