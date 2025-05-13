object knightRider {
    const peso = 500
    const nivelPeligrosidad = 10

    method peso() = peso
    method nivelPeligrosidad() = nivelPeligrosidad
    
}

object bumblebee {
  const peso = 800
  var nivelPeligrosidad = 15
 
  method peso() = peso

  method transformarARobot(){
    nivelPeligrosidad = 30
  }
  
  method transformarAAuto(){
    nivelPeligrosidad = 15
  }

  method nivelPeligrosidad() = nivelPeligrosidad

}

object paqueteLadrillos {
    var property ladrillos = 0
    const nivelPeligrosidad = 2
    
    method ladrillos() = ladrillos
    method peso() = self.ladrillos() * 2
    method nivelPeligrosidad() = nivelPeligrosidad

}

object arenaAGranel {
    var property peso = 0
    const nivelPeligrosidad = 1
    method peso() = peso
    method nivelPeligrosidad() = nivelPeligrosidad

}

object bateriaAntiaerea {
    var peso = 300
    var nivelPeligrosidad = 100

   method peso() = peso
   method nivelPeligrosidad() = nivelPeligrosidad
   method cargaMisiles(){
    peso = 300
   }
   method sinMisiles(){
    peso = 200
   }
   method peligrosidadConMisiles(){
    nivelPeligrosidad = 100
   }
   method peligrosidadSinMisiles(){
    nivelPeligrosidad = 0
   }

}

object contenedorPortuario {
    const cosasDentro = []
    const peso = 100 + cosasDentro.sum({c => c.size()})
    const nivelPeligrosidad = cosasDentro.findOrElse({ c=> c.objetoMasPeligroso()}, {=> 0})

    method peso() = peso
    method nivelPeligrosidad() = nivelPeligrosidad
    method objetoMasPeligroso(){
       return cosasDentro.max({o => o.nivelPeligrosidad()})
    }

    method cargarEnContendor(cosita){
        cosasDentro.add(cosita)
    }
    method descargarEnContenedor(cosita){
        cosasDentro.remove(cosita)
    }

}

object residuosRadioactivos {
    var property peso = 0
    const nivelPeligrosidad = 200

    method peso() = peso
    method nivelPeligrosidad() = nivelPeligrosidad
}

object embajaleDeSeguridad {
    var property cosaDentro = paqueteLadrillos
    const peso = self.cosaDentro().peso()
    const nivelPeligrosidad = self.cosaDentro().nivelPeligrosidad() / 2

    method cosaDentro() = cosaDentro
    method peso() = peso
    method nivelPeligrosidad() = nivelPeligrosidad


}