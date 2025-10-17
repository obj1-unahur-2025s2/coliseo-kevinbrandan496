import armas.*
import coliseo.*


class Mirmillones {
var vida=100
const  fuerza
const  arma
var property armadura
var  property gladiadorAAtacar

method destreza() = 15 

method vida() = vida

method estaVivo() = vida>0 

method poderAtaque() = arma.valorDeAtaque() + fuerza

method defensa() = armadura.defensa() +self.destreza()

method atacar(enemigo) {
  if(self.puedeInfringirDaño(enemigo) && enemigo.estaVivo())
  enemigo.sufrirdaño(self.poderAtaque()-enemigo.defensa())
    }
method sufrirDaño(unValor) {vida=(vida-unValor).max(0)}
method puedeInfringirDaño(enemigo) = self.poderAtaque()>enemigo.defensa()

method pelear(enemigo) {
  self.atacar(enemigo)
  enemigo.atacar(self)
    } 

method curar() {vida=100} 


method crearGrupo(otroGladiador) = new Grupo(nombre="mirmillolandia",gladiadores= #{self,otroGladiador})
  
}



class Dimachaerus {
var vida=100
var  destreza
const armas = []  
method fuerza() =10 

method destreza() = destreza 
method agregarArma(unArma) = armas.add(unArma)
method quitarArma(unArma) = armas.remove(unArma)
method estaVivo() = vida>0 
method poderAtaque() = armas.sum({p=>p.valorDeAtaque()}) +self.fuerza() 
method defensa() = destreza/2 

method atacar(enemigo) {
  if(self.puedeInfringirDaño(enemigo) && enemigo.estaVivo())
  enemigo.sufrirdaño(self.poderAtaque()-enemigo.defensa())
  destreza+=1 
    }
method sufrirDaño(unValor) {vida=(vida-unValor).max(0)}
method puedeInfringirDaño(enemigo) = self.poderAtaque()>enemigo.defensa()
method curar() {vida=100}

method crearGrupo(otroGladiador) = new Grupo(nombre="D"+(self.poderAtaque()+otroGladiador.poderAtaque()).toString()
,gladiadores= #{self,otroGladiador})

}