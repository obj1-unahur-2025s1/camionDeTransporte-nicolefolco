import cosas.*

object camion {
 const cosasCargadas = []
 const taraPeso = 1000
 const pesoTotal = 0

 method pesoTotal() = cosasCargadas.sum({c => c.peso()}) + taraPeso

method taraPeso() = taraPeso

 method agregarCarga(cosita){
    cosasCargadas.add(cosita)
 }

method descargarCarga(cosita){
    cosasCargadas.remove(cosita)
}

method sonDePesoPar() {
 return cosasCargadas.all({c => c.peso() % 2 == 0 })
}

method cosaPesa(cosita, numero){
  return  cosita.peso() == numero
}

method primerCosaConPeligrosidad(nivel){
   return cosasCargadas.any({c => c.nivelPeligrosidad() == nivel})
}

method obtenerCosasConNivel(nivel){
   return cosasCargadas.filter({c => c.nivelPeligrosidad() > nivel})
}

method queCosasSuperanElNivelDeCosa(cosa){
 return cosasCargadas.filter({ c => c.nivelPeligrosidad() > cosa.nivelPeligrosidad() })
}

method estaExcedidoDePeso(){
   return pesoTotal > 2500
}

method puedeCircularEnRuta(nivel){
    return not self.estaExcedidoDePeso() and not self.primerCosaConPeligrosidad(nivel)
}

method cosaPesaEntreMinMax(primerPeso, segundoPeso){
    cosasCargadas.any({c => c.peso().between(primerPeso, segundoPeso)})
    }

method cosaMasPesada(){
    cosasCargadas.max({c => c.peso()})
}
}
