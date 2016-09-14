//
//  Zombie.swift
//  MonsterTown
//
//  Created by Andre Dias on 9/1/16.
//  Copyright © 2016 Andre Dias. All rights reserved.
//

class Zombie: Monster {
    override class var makeSpookyNoise: String{ //computed property static definition
        return "Brains..."
    }
    
    var walkWithLimp = true
    
    override func terrorizingTown() {
        if town?.population >= 0{
            town?.changePopulation(-10)
            super.terrorizingTown()
        }else{
            return
        }
        if town?.population < 0{
            town?.population = 0
        }
    }
    
    func changeName(name: String, walkWithLimp: Bool){
        self.name = name
        self.walkWithLimp = walkWithLimp
    }
}
