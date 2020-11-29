//
//  Artista.swift
//  ProyectoSemestralMiguelRuben
//
//  Created by Alumno on 11/22/20.
//  Copyright © 2020 Alumno. All rights reserved.
//

import Foundation

class Artista {
    var nombre : String
    var nombreReal : String
    var nacionalidad : String
    var imagenArtista : String
    var nacimiento : String
    var ciudad : String
    var imagenArtista2 : String
    
    init(nombre: String, nombreReal: String, nacionalidad: String, imagenArtista: String, nacimiento : String, ciudad : String, imagenArtista2 : String) {
        self.nombre = nombre
        self.nombreReal = nombreReal
        self.nacionalidad = nacionalidad
        self.imagenArtista = imagenArtista
        self.nacimiento = nacimiento
        self.ciudad = ciudad
        self.imagenArtista2 = imagenArtista2
    }
}
