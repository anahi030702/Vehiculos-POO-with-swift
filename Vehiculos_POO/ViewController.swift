//
//  ViewController.swift
//  Vehiculos_POO
//
//  Created by imac on 24/09/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        Vehiculo.mostrarSaludo()
        
        let veh1 = Vehiculo("Chevrolet", .red , 2, 0, 200)
        veh1.cambiarVelocidad(100)
        veh1.mostrarDato()
        print(veh1)
        
        var veh2 = Vehiculo()
        veh2.color = .black
        veh2.marca = "Ford"
        veh2.numRuedas = 4
        veh2.mostrarDato()
        print(veh2)
        
        veh2 = veh1
        veh2.cambiarVelocidad(120)
        veh1.mostrarDato()
        print(veh1)
        
        veh2.velAct = 30.0
        veh1.velMax = 100.0
        veh1.mostrarDato()
        
        veh1.cambiarVelocidad(-50)
        
    }


}

