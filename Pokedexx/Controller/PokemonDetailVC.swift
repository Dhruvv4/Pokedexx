//
//  PokemonDetailVC.swift
//  Pokedexx
//
//  Created by Dhruv Vaghela on 15/10/17.
//  Copyright © 2017 Dhruv Vaghela. All rights reserved.
//

import UIKit

class PokemonDetailVC: UIViewController {

    var pokemon: Pokemon!
    
    @IBOutlet weak var mainImg: UIImageView!
    @IBOutlet weak var descriptionLbl: UILabel!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var typeLbl: UILabel!
    @IBOutlet weak var defenseLbl: UILabel!
    @IBOutlet weak var pokedexIDLbl: UILabel!
    @IBOutlet weak var heightLbl: UILabel!
    @IBOutlet weak var weightLbl: UILabel!
    @IBOutlet weak var attackLbl: UILabel!
    @IBOutlet weak var currentEvoImg: UIImageView!
    @IBOutlet weak var nextEvoImg: UIImageView!
    @IBOutlet weak var evolutionLbl: UILabel!
    
    @IBAction func backBtn(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
        if nextEvoImg.isHidden {
            nextEvoImg.isHidden = false
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLbl.text = pokemon.name.capitalized
        mainImg.image = UIImage(named: pokemon.pokedexID)
        currentEvoImg.image = UIImage(named: pokemon.pokedexID)
        pokemon.downloadPokemonDetails {
            
            self.updateUI()
        }
    }
    
    func updateUI() {
        attackLbl.text = pokemon.attack
        defenseLbl.text = pokemon.defense
        heightLbl.text = pokemon.height
        weightLbl.text = pokemon.weight
        pokedexIDLbl.text = pokemon.pokedexID
        typeLbl.text = pokemon.type
        descriptionLbl.text = pokemon.description
        if pokemon.nextEvolutionLevel == "" {
            evolutionLbl.text = "Reached Max Evolution"
            nextEvoImg.isHidden = true
        } else {
            evolutionLbl.text = "Next Evolution: \(pokemon.nextEvolutionName) LVL \(pokemon.nextEvolutionLevel)"
            nextEvoImg.image = UIImage(named: pokemon.nextEvolutionId)
        }
    }

    

}
