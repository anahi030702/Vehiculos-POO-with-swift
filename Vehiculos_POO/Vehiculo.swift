//
//  Vehiculo.swift
//  Vehiculos_POO
//
//  Created by imac on 24/09/24.
//

import UIKit

class Vehiculo: NSObject {

    //con exclamacion soporte null y con = "" lo inicializa en vacio
    var marca: String
    var color: UIColor
    var numRuedas : Int
    var velAct: Float
    var velMax: Float
    
    //override porque se va a sobreescribir el init de NSObject
    override init() {
        marca = ""
        color = .red
        numRuedas = 0
        velAct = 0.0
        velMax = 0.0
    }
    
    //lit como el init en python pero es un segundo init ya que se hereda del NSObject el original
    init(_ marca: String, _ color: UIColor, _ nR: Int, _ vA: Float, _ vM: Float) {
        self.marca = marca
        self.color = color
        numRuedas = nR
        velAct = vA
        velMax = vM
    }
    
    static func mostrarSaludo(){
        print("Soy un metodo estatico o metodo de clase")
    }
    
    func mostrarDato(){
        print("Vehiculo de marca  \(marca)\nColor: \(color) \nNumero de ruedas: \(numRuedas) \nNivel actual: \(velAct) \nVelocidad maxima: \(velMax)")
    }
    
    //es como el str en python
    override var description: String{
        return "Vehiculo marca: \(marca)"
    }
    
    func cambiarVelocidad(_ cambio: Float){
        velAct += cambio
        if velAct < 0{
            velAct = 0
        }
        if velAct > velMax{
            velAct = velMax
        }
        
        print("velocidad actual:\(velAct)\nVelocidad maxima:\(velMax)")
    }
}
