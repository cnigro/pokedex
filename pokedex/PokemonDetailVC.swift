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
		
		nameLbl.text = pokemon.name
		
    }

}
