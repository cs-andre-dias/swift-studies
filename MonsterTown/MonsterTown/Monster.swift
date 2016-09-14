//
//  Monster.swift
//  MonsterTown
//
//  Created by Andre Dias on 9/1/16.
//  Copyright © 2016 Andre Dias. All rights reserved.
//


class Monster {
    class var makeSpookyNoise: String {
        return "Grr.."
    }
    var town: Town? //Tipo Town mas como optional
    var name = "Monster"
    
    var victimPool: Int {
        get {
            return town?.population ?? 0
        }
        set(newVictimPool) {
            town?.population = newVictimPool
        }
    }
    
    func terrorizingTown(){
        if town != nil{
            print("\(name) is terrorizing the town")
        }else{
            print("the city is safe")
        }
    }
}
