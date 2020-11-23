//
//  DetallesArtistasController.swift
//  ProyectoSemestralMiguelRuben
//
//  Created by Alumno on 11/23/20.
//  Copyright © 2020 Alumno. All rights reserved.
//

import Foundation
import UIKit

class DetallesArtistasController : UIViewController {
    
    @IBOutlet weak var lblNombreArtistico: UILabel!
    @IBOutlet weak var imgArtista2: UIImageView!
    @IBOutlet weak var lblNombreReal: UILabel!
    @IBOutlet weak var lblNacionalidad: UILabel!
    @IBOutlet weak var lblFechaNacimiento: UILabel!
    @IBOutlet weak var lblLugarNacimiento: UILabel!
    
    var artista : Artista?
    
    override func viewDidLoad() {
        self.title = artista?.nombre
        
        if artista != nil {
            lblNombreArtistico.text = artista?.nombre
            lblNombreReal.text = artista?.nombreReal
            lblNacionalidad.text = artista?.nacionalidad
            lblFechaNacimiento.text = artista?.nacimiento
            lblLugarNacimiento.text = artista?.ciudad
            
            imgArtista2.image = UIImage(named: artista!.imagenArtista2)
            
        }
    }
}
