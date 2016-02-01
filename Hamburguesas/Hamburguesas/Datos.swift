//
//  Datos.swift
//  Hamburguesas
//
//  Created by Hudson Ferreira Leite on 1/31/16.
//  Copyright © 2016 Hudson Ferreira Leite. All rights reserved.
//

import Foundation
import UIKit

class ColeccionDePaises {
    let paises : [String] = ["Argentina", "Brasil", "Canadá", "Dinamarca", "Equador", "França", "Guatemala", "Holanda", "Índia", "Jordania", "Kuwait", "Luxemburgo", "México", "Nigéria", "Omã", "Peru", "Qatar", "Rússia", "Suécia", "Tailândia", "Ucrânia", "Venezuela", "Wallis e Futuna", "Zâmbia"]
    
    func obtenPais() -> String {
        let posicao : Int = Int(arc4random()) % paises.count
        return paises[posicao]
    }
}

class ColeccionDeHamburguesa {
    let hamburguesas : [String] = []
    
    func obterHamburguesa() -> String {
        let posicao : Int = Int(arc4random()) % hamburguesas.count
        return hamburguesas[posicao]
    }
}