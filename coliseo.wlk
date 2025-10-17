import gladiador.*
import armas.*



object coliseo {
    const grupos = #{}
  
}

class Grupo {
    const property nombre  
  const gladiadores = #{} 
  var cantidadPeleas=0

  method gladiadoresVivos() = gladiadores.filter({g=>g.estaVivo()})
  method hayAlgunGladiadorVivo() = gladiadores.any({g=>g.estaVivo()})  
  method campeon() = self.gladiadoresVivos().max({g=>g.fuerza()})

  method pelearCon(otroGrupo) {if(self.hayAlgunGladiadorVivo()
  &&otroGrupo.hayAlgunGladiadorVivo()){self.campeon().pelearCon(otroGrupo.campeon())
  
    }

  }

  method registrarPelea() {cantidadPeleas+=1
    
  }

  method combatir(otroGrupo) {
    (1..3).forEach({self.pelearCon(otroGrupo)})
    self.registrarPelea()
    otroGrupo.registrarPelea()
  }


  method agregarGladiador(unGladiador) { gladiadores.add(unGladiador)
    
  }

  method sacarGladiador(unGladiador) { gladiadores.remove(unGladiador)
    
  }

  method curar() {gladiadores.forEach({g=>g.curar()})} 
}