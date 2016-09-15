//
//  Vampire.swift
//  MonsterTown
//
//  Created by Andre Dias on 9/14/16.
//  Copyright © 2016 Andre Dias. All rights reserved.
//

class Vampire: Monster {
    override class var makeSpookyNoise: String {
        return "Blood..."
    }
    
    var vampireThrall  = [String]()
    
    override func terrorizingTown() {
        vampireThrall.append("Vampire")
        if town?.population > 0 {
            town?.changePopulation(-1)
            super.terrorizingTown()
        }else{
            return
        }
        
        if town?.population < 0{
            town?.population = 0
        }
        
    }
    required init(town: Town?, monsterName: String){
        super.init(town: town, monsterName: monsterName)
    }
    
}
