//
//  Zombie.swift
//  MonsterTown
//
//  Created by Andre Dias on 9/1/16.
//  Copyright © 2016 Andre Dias. All rights reserved.
//

class Zombie: Monster {
    var mayor = Mayor(anxietyLevel: 0)
    
    override class var makeSpookyNoise: String{ //computed property static definition
        return "Brains..."
    }
    
    var walkWithLimp = true
    private var isFallingApart = false
    
    override func terrorizingTown() {
        if town?.population >= 0 && !isFallingApart{
            town?.changePopulation(-10)
            super.terrorizingTown() //call the monster implementation
            print(mayor.pronunciation)
            mayor.anxietyLevel += 1
            print("The anxiety level of mayor is \(mayor.anxietyLevel)")
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
