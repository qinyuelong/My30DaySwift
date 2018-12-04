//
//  DetailViewController.swift
//  Project 07 - PokedexGo
//
//  Created by LinkE on 2018/12/3.
//  Copyright © 2018年 dev. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var nameIDLabel: UILabel!
    @IBOutlet weak var pokeImageView: UIImageView!
    @IBOutlet weak var pokeInfoLabel: UILabel!
    
    var pokemon: Pokemon! {
        didSet (newPokemon) {
            self.refreshUI()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    func refreshUI() {
        nameIDLabel?.text = pokemon.name + (pokemon.id < 10 ? " #00\(pokemon.id)" : pokemon.id < 100 ? " #0\(pokemon.id)" : " #\(pokemon.id)")
        pokeImageView?.image = LibraryAPI.sharedInstance.downloadImg(pokemon.pokeImgUrl)
        pokeInfoLabel?.text = pokemon.detailInfo
        
        self.title = pokemon.name
    }
}


extension DetailViewController: PokemonSelectionDelegate {
    func pokemonSelected(_ newPokemon: Pokemon) {
        pokemon = newPokemon
    }
}
