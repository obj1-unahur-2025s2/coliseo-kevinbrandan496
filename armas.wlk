class ArmaDeFilo {
    const  property filo
    const property longitud 


    method initialize() {
      if(!filo.between(0, 1)) {self.error("filo entre 0 y 1")}
    }

    method valorDeAtaque() = filo*longitud 

    
}


class ArmaContundente {
    const property peso 

    method valorDeAtaque() = peso 

}

object casco {

method defensa(gladiador) = 10

  
}

object escudo {

  method defensa(gladiador) = 5 + gladiador.destreza()*0.1
}





