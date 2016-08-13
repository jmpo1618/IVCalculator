//
//  PokemonStats.swift
//  IV Calculator
//
//  Created by Juan M Penaranda on 8/12/16.
//  Copyright © 2016 Juan M Penaranda. All rights reserved.
//

import UIKit

class PokemonStats {
    
    var name: String
    var CP: Int
    var HP: Int
    var dust: Int
    var powered: Bool
    
    init(name: String, CP: Int, HP: Int, dust: Int, powered: Bool) {
        self.name = name
        self.CP = CP
        self.HP = HP
        self.dust = dust
        self.powered = powered
    }
}
