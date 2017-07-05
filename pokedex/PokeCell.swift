//
//  PokeCell.swift
//  pokedex
//
//  Created by cameron nigro on 7/2/17.
//  Copyright © 2017 Sheepware. All rights reserved.
//

import UIKit

class PokeCell: UICollectionViewCell {
	
	@IBOutlet weak var thumbImg: UIImageView!
	@IBOutlet weak var nameLbl: UILabel!
	
	var pokemon: Pokemon!
	
	required init?(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
		
		layer.cornerRadius = 7.5
	}
	
	func configureCell(_ pokemon: Pokemon) {
		
		self.pokemon = pokemon
		
		nameLbl.text = self.pokemon.name.capitalized
		thumbImg.image = UIImage(named: "\(self.pokemon.pokedexId)")
		
		
	}
    
}
