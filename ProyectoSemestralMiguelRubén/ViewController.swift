//
//  ViewController.swift
//  ProyectoSemestralMiguelRubén
//
//  Created by Alumno on 11/22/20.
//  Copyright © 2020 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tvAlbumes: UITableView!
    
    var albumes : [Album] = []
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destino = segue.destination as! DetallesAlbumesController
        destino.album = albumes[tvAlbumes.indexPathForSelectedRow!.row]
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return albumes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celdaAlbum = tableView.dequeueReusableCell(withIdentifier: "celdaAlbum") as! CeldaAlbumesController
        
        celdaAlbum.lblAlbum.text = albumes[indexPath.row].titulo
        celdaAlbum.lblFecha.text = albumes[indexPath.row].fecha
        celdaAlbum.lblArtista.text = albumes[indexPath.row].artista
        
        celdaAlbum.imgAlbum.image = UIImage(named: albumes[indexPath.row].imagenAlbum)
        
        let viewColor = UIView()
        viewColor.backgroundColor = UIColor.lightText
        celdaAlbum.selectedBackgroundView = viewColor
        
        return celdaAlbum
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        albumes.append(Album(titulo: "Thriller", artista: "Michael Jackson", fecha: "Nov 30, 1982", imagenAlbum: "Thriller", genero: "Pop", disquera: "Westlake", imagenArtista: "MJ"))
        albumes.append(Album(titulo: "Nevermind", artista: "Nirvana", fecha: "Sep 24, 1991", imagenAlbum: "Nevermind", genero: "Grunge", disquera: "Sound City", imagenArtista: "N"))
        albumes.append(Album(titulo: "Abbey Road", artista: "The Beatles", fecha: "Sep 26, 1969", imagenAlbum: "Abbey Road", genero: "Rock", disquera: "Apple", imagenArtista: "TB"))
        albumes.append(Album(titulo: "Led Zeppelin IV", artista: "Led Zeppelin", fecha: "Nov 8, 1971", imagenAlbum: "Led Zeppelin IV", genero: "Rock", disquera: "Headley Grange", imagenArtista: "LZ"))
        albumes.append(Album(titulo: "The Dark Side of the Moon", artista: "Pink Floyd", fecha: "Mar 1, 1973", imagenAlbum: "The Dark Side", genero: "Art Rock", disquera: "London", imagenArtista: "PF"))
        albumes.append(Album(titulo: "Their Greatest Hits", artista: "Eagles", fecha: "Feb 17, 1976", imagenAlbum: "Their Greatest Hits", genero: "Rock", disquera: "Asylum Records", imagenArtista: "E"))
        albumes.append(Album(titulo: "Future Nostalgia", artista: "Dua Lipa", fecha: "March 27, 2020", imagenAlbum: "Future Nostalgia", genero: "Pop", disquera: "Warner Records", imagenArtista: "DL"))
        albumes.append(Album(titulo: "Purple Rain", artista: "Prince and The Revolution", fecha: "Jun 25, 1984", imagenAlbum: "Purple Rain", genero: "Rock", disquera: "Warner Bros", imagenArtista: "PR"))
        albumes.append(Album(titulo: "After Hours", artista: "The Weeknd", fecha: "March 20, 2020", imagenAlbum: "After Hours", genero: "Dream pop", disquera: "Republic Records", imagenArtista: "TW"))
        albumes.append(Album(titulo: "Thank U, Next", artista: "Ariana Grande", fecha: "February 8, 2019", imagenAlbum: "Thank U, Next", genero: "Pop", disquera: "Republic Records", imagenArtista: "AG"))
    }


}
