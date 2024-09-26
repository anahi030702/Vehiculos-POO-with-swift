//
//  Camion.swift
//  Vehiculos_POO
//
//  Created by imac on 25/09/24.
//

import UIKit

class Camion: Vehiculo {
    var cargaAct: Float
    var cargaMax: Float

    override init() {
        cargaMax = 0.0
        cargaAct = 0.0
        super.init()
        
    }
    
    init(_ vehiculo: Vehiculo, cA:Float, cM:Float){
        cargaAct = cA
        cargaMax = cM
        super.init(vehiculo.marca, vehiculo.color, vehiculo.numRuedas, vehiculo.velAct, vehiculo.velMax)
    }
    
    override func mostrarDato() {
        super.mostrarDato()
        print("Carga actual: \(cargaAct) y Carga maxima: \(cargaMax) ")
    }
    
    override var description: String{
        return "Soy un camion de marca: \(marca) "
    }
}
