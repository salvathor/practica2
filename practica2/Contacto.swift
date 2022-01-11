//
//  Contacto.swift
//  practica2
//
//  Created by Salvador Lopez on 10/01/22.
//

import Foundation

enum Parentesco:String{
    case Hermano
    case Amigo
    case Padre
    case Madre
    case Hijo
}

class Contacto {
    var nombre: String
    var edad: Int
    var parentesco: Parentesco
    
    init(nombre:String,edad:Int,parentesco:Parentesco){
        self.nombre = nombre
        self.edad = edad
        self.parentesco = parentesco
    }
}
