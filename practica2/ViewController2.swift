//
//  ViewController2.swift
//  practica2
//
//  Created by Salvador Lopez on 11/01/22.
//

import UIKit

class ViewController2: UIViewController {
    
    var contactoDetail:Contacto!

    override func viewDidLoad() {
        super.viewDidLoad()
        print(contactoDetail.nombre)
        print(contactoDetail.edad)
        print(contactoDetail.parentesco)
        //Todo - hacer el calculo para habilitar el boton de share
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
