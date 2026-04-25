object tom {

    var energia = 50

    method energia() = energia

    method correr(metros) {
         energia = energia - (metros)/2
         return energia
    }    

    method comer(raton) {
        energia = energia + 12 + raton.peso()
        return energia
    }

    method velocidadMaxima() {
        return 5 + energia/10
    }

    method puedeCazar(distancia) {
        return (distancia/2)<=energia
    }

    method cazarA(raton, distancia) {
        if (self.puedeCazar(distancia))
        self.correr(distancia)
        self.comer(raton)
    }
}



