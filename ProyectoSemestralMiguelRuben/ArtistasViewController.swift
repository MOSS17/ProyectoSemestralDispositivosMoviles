//
//  ArtistasViewController.swift
//  ProyectoSemestralMiguelRuben
//
//  Created by Alumno on 11/22/20.
//  Copyright © 2020 Alumno. All rights reserved.
//

import UIKit

class ArtistasViewController : UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tvArtistas: UITableView!
    
    var artistas : [Artista] = []
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destino = segue.destination as! DetallesArtistasController
        destino.artista = artistas[tvArtistas.indexPathForSelectedRow!.row]
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return artistas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celdaArtista = tableView.dequeueReusableCell(withIdentifier: "celdaArtista") as! CeldaArtistasController
        
        celdaArtista.lblNombreArtistico.text = artistas[indexPath.row].nombre
        celdaArtista.lblNombreReal.text = artistas[indexPath.row].nombreReal
        celdaArtista.lblNacionalidad.text =
            artistas[indexPath.row].nacionalidad
        
        celdaArtista.imgArtista.image = UIImage(named:
            artistas[indexPath.row].imagenArtista)
        
        return celdaArtista
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        artistas.append(Artista(nombre: "Drake", nombreReal: "Aubrey Drake Graham", nacionalidad: "Canadiense", imagenArtista: "Drake", nacimiento: "Oct 24, 1986", ciudad: "Toronto", imagenArtista2: "Drake2"))
        artistas.append(Artista(nombre: "Ariana Grande", nombreReal: "Ariana Grande-Butera", nacionalidad: "Estadounidense", imagenArtista: "ArianaG", nacimiento: "Jun 26, 1993", ciudad: "Boca Raton", imagenArtista2: "ArianaG2"))
        artistas.append(Artista(nombre: "Selena Gomez", nombreReal: "Selena Marie Gomez", nacionalidad: "Estadounidense", imagenArtista: "SelenaG", nacimiento: "Jul 22, 1992", ciudad: "Gran Prairie", imagenArtista2: "SelenaG2"))
        artistas.append(Artista(nombre: "Taylor Swift", nombreReal: "Taylor Alison Swift", nacionalidad: "Estadounidense", imagenArtista: "TaylorS", nacimiento: "Dic 13, 1989", ciudad: "Pennsylvania", imagenArtista2: "TaylorS2"))
        artistas.append(Artista(nombre: "Lady Gaga", nombreReal: "Stefani Joanne Angelina Germanotta", nacionalidad: "Estadounidense", imagenArtista: "LadyG", nacimiento: "Mar 28, 1996", ciudad: "New York City", imagenArtista2: "LadyG2"))
        artistas.append(Artista(nombre: "Katy Perry", nombreReal: "Katheryn Elizabeth Hudson", nacionalidad: "Estadounidense", imagenArtista: "KatyP", nacimiento: "Oct 25, 1984", ciudad: "Santa Barbara", imagenArtista2: "KatyP2"))
        artistas.append(Artista(nombre: "Sarki", nombreReal: "Eduardo Antolin Jimenez", nacionalidad: "Mexicano", imagenArtista: "EduardoA", nacimiento: "Oct 27, 1999", ciudad: "Cd. Obregón", imagenArtista2: "EduardoA2"))
        artistas.append(Artista(nombre: "Harry Styles", nombreReal: "Harry Edward Styles", nacionalidad: "Britanica", imagenArtista: "HarryS", nacimiento: "Feb 1, 1994", ciudad: "Cheshire", imagenArtista2: "HarryS2"))
        artistas.append(Artista(nombre: "Ed Sheeran", nombreReal: "Edward Christopher Sheeran", nacionalidad: "Britanica", imagenArtista: "EdS", nacimiento: "Feb 17, 1991", ciudad: "Halifax", imagenArtista2: "EdS2"))
        artistas.append(Artista(nombre: "Beyoncé", nombreReal: "Beyonce Giselle Knowles", nacionalidad: "Estadounidense", imagenArtista: "Beyonce", nacimiento: "Sep 4, 1981", ciudad: "Houston", imagenArtista2: "Beyonce2"))
        }
}
