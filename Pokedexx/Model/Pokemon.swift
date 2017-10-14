//
//  Pokemon.swift
//  Pokedexx
//
//  Created by Dhruv Vaghela on 14/10/17.
//  Copyright © 2017 Dhruv Vaghela. All rights reserved.
//

import Foundation

class Pokemon {
    
    private var _name: String!
    private var _pokedexID: Int!
    
    var name: String {
        return _name
    }
    
    var pokedexID: Int {
        return _pokedexID
    }
    
    init(name: String, pokedexId: Int) {
        self._name = name
        self._pokedexID = pokedexId
    }
}
