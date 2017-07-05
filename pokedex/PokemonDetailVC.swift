//
//  PokemonDetailVC.swift
//  pokedex
//
//  Created by cameron nigro on 7/3/17.
//  Copyright © 2017 Sheepware. All rights reserved.
//

import UIKit

class PokemonDetailVC: UIViewController {
	
	var pokemon: Pokemon!

	@IBOutlet weak var mainImg: UIImageView!
	@IBOutlet weak var nameLbl: UILabel!
	@IBOutlet weak var descriptionLbl: UILabel!
	@IBOutlet weak var typeLbl: UILabel!
	@IBOutlet weak var defenseLbl: UILabel!
	@IBOutlet weak var heightLbl: UILabel!
	@IBOutlet weak var pokedexLbl: UILabel!
	@IBOutlet weak var weightLbl: UILabel!
	@IBOutlet weak var attackLbl: UILabel!
	@IBOutlet weak var currentEvoImg: UIImageView!
	@IBOutlet weak var nextEvoImg: UIImageView!
	@IBOutlet weak var evoLbl: UILabel!
	
	@IBAction func backButtonPressed(_ sender: UIButton) {
		dismiss(animated: true, completion: nil)
	}
	
    override func viewDidLoad() {
        super.viewDidLoad()
		
		nameLbl.text = pokemon.name.capitalized
		
		let img = UIImage(named: "\(pokemon.pokedexId)")
		mainImg.image = img
		currentEvoImg.image = img
		pokedexLbl.text = "\(pokemon.pokedexId)"
		
		pokemon.downloadPokemonDetails {
			
			// Whatever we write here will only be called after network call is complete
			self.updateUI()
			
		}
		
    }
	
	func updateUI() {
		
		attackLbl.text = pokemon.attack
		defenseLbl.text = pokemon.defense
		heightLbl.text = pokemon.height
		weightLbl.text = pokemon.weight
		typeLbl.text = pokemon.type
		descriptionLbl.text = pokemon.description
		
		if pokemon.nextEvoId == "" {
			
			evoLbl.text = "No Evolutions"
			nextEvoImg.isHidden = true
			
		} else {
			
			nextEvoImg.isHidden = false
			nextEvoImg.image = UIImage(named: "\(pokemon.nextEvoId)")
			let str = "Next Evolution: \(pokemon.nextEvoName) - LVL \(pokemon.nextEvoLvl)"
			evoLbl.text = str 
			
		}
		
	}

}
