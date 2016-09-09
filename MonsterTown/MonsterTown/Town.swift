//
//  Town.swift
//  MonsterTown
//
//  Created by Andre Dias on 9/1/16.
//  Copyright © 2016 Andre Dias. All rights reserved.
//

struct Town {
    let region = "South"
    var population = 0
    var numberOfStopLights = 4
    
    enum Size {
        case Small
        case Medium
        case Large
    }
    var townSize: Size {
        get {
        switch self.population {
        case 0...10000:
            return Size.Small
        case 10001...100000:
            return Size.Medium
        default:
            return Size.Large
            }
        }
    }
    
    func printTownDescription(){
        print("Population: \(population), number of stoplights: \(numberOfStopLights)")
    }
    
    mutating func changePopulation(amount:Int){
        population += amount
    }
}