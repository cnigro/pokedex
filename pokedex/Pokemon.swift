//
//  Pokemon.swift
//  pokedex
//
//  Created by cameron nigro on 7/2/17.
//  Copyright © 2017 Sheepware. All rights reserved.
//

import Foundation

class Pokemon {
	
	fileprivate var _name: String!
	fileprivate var _pokedexId: Int!
	private var _description: String!
	private var _type: String!
	private var _defense: String!
	private var _height: String!
	private var _weight: String!
	private var _attack: String!
	private var _nextEvoText: String!
	
	var name: String {
		return _name
	}
	
	var pokedexid: Int {
		return _pokedexId
	}
	
	init(name: String, pokedexId: Int) {
		
		self._name = name
		self._pokedexId = pokedexId
		
	}
	
}
