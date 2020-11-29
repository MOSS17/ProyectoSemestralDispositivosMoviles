//
//  Album.swift
//  ProyectoSemestralMiguelRuben
//
//  Created by Alumno on 11/22/20.
//  Copyright © 2020 Alumno. All rights reserved.
//

import Foundation

class Album {
    var titulo : String
    var artista : String
    var fecha : String
    var imagenAlbum : String
    var genero : String
    var disquera : String
    var imagenArtista : String
    
    init(titulo: String, artista: String, fecha: String, imagenAlbum: String, genero: String, disquera: String, imagenArtista: String) {
        self.titulo = titulo
        self.artista = artista
        self.fecha = fecha
        self.imagenAlbum = imagenAlbum
        self.genero = genero
        self.disquera = disquera
        self.imagenArtista = imagenArtista
    }
}
