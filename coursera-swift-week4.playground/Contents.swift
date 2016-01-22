//: Week 4

import UIKit

enum Velocidades : Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120

    init(velocidadInicial: Velocidades) {
        self = velocidadInicial
    }

    func enCadena() -> String {
        var result: String? = nil
        switch self {
        case .Apagado:
            result = "Apagado"
        case .VelocidadBaja:
            result = "Velocidad baja"
        case .VelocidadMedia:
            result = "Velocidad media"
        case .VelocidadAlta:
            result = "Velocidad alta"
        }
        return result!
    }
}

class Auto {
    var velocidad : Velocidades

    init() {
        self.velocidad = Velocidades.init(velocidadInicial: Velocidades.Apagado)
    }

    func cambioDeVelocidad(actual: Int, velocidadEnCadena: String) -> (velocidadAtual: Velocidades, cadenaDeLaVelocidad: String) {
        if actual == Velocidades.Apagado.rawValue {
            velocidad = Velocidades.init(velocidadInicial: Velocidades.VelocidadBaja)
        }
        if actual == Velocidades.VelocidadBaja.rawValue {
            velocidad = Velocidades.init(velocidadInicial: Velocidades.VelocidadMedia)
        }
        if actual == Velocidades.VelocidadMedia.rawValue {
            velocidad = Velocidades.init(velocidadInicial: Velocidades.VelocidadAlta)
        }
        if actual == Velocidades.VelocidadAlta.rawValue {
            velocidad = Velocidades.init(velocidadInicial: Velocidades.VelocidadMedia)
        }
        return (velocidad, velocidadEnCadena)
    }
}

var auto = Auto()
for v in 1...20 {
    print("\(v). \(auto.velocidad.rawValue), \(auto.velocidad.enCadena())")
    auto.cambioDeVelocidad(auto.velocidad.rawValue, velocidadEnCadena: auto.velocidad.enCadena())
}