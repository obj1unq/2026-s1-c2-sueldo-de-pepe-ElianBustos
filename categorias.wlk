
object gerente {
	method neto() {
		return 15000 
		} 
}

// agregar cadete

object cadetes {
	method neto() {
		return 20000
	}
}

object vendedor {
	var activador = true

	method activarAumentoPorMuchasVentas() {
		activador = true
	}

	method desactivarAumentoPorMuchasVentas() {
		activador = false
	}



	method neto() {
		if (activador){
			return 16000 * 1.25
		}else{
			return 16000
		}
	}

	

}

object medio_tiempo {
	var categoria = 0

	method medioTiempo_categoriaBase(_categoria) {
		categoria=categoria.neto() / 2
	}

	method neto() {
		return categoria
	}
}