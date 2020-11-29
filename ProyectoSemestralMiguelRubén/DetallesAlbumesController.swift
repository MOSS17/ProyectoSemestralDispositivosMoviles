//
//  DetallesAlbumesController.swift
//  ProyectoSemestralMiguelRubén
//
//  Created by Alumno on 11/22/20.
//  Copyright © 2020 Alumno. All rights reserved.
//

import Foundation
import UIKit

class DetallesAlbumesController: UIViewController {
    
    @IBOutlet weak var imgAlbum: UIImageView!
    @IBOutlet weak var lblAlbum: UILabel!
    @IBOutlet weak var lblArtista: UILabel!
    @IBOutlet weak var lblFecha: UILabel!
    @IBOutlet weak var lblGenero: UILabel!
    @IBOutlet weak var lblDisquera: UILabel!
    @IBOutlet weak var imgArtista: UIImageView!
    
    var album : Album?
    
    override func viewDidLoad() {
        self.title = album?.titulo
        
        if album != nil {
            lblAlbum.text = album?.titulo
            lblArtista.text = album?.artista
            lblFecha.text = album?.fecha
            lblGenero.text = album?.genero
            lblDisquera.text = album?.disquera
            
            imgAlbum.image = UIImage(named: album!.imagenAlbum)
            imgArtista.image = UIImage(named: album!.imagenArtista)
            
        }
    }
}
