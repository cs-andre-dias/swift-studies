//
//  Town.swift
//  MonsterTown
//
//  Created by Andre Dias on 9/1/16.
//  Copyright © 2016 Andre Dias. All rights reserved.
//

struct Town {
    var mayor = Mayor(anxietyLevel: 0)
    let region: String
    var population: Int{
        didSet(oldPopulation){
            if population > oldPopulation {
                print("Segue o jogo")
            }else{
                print("the population has changed from \(oldPopulation) to \(population)")
            }
            
        }
    }
    var numberOfStopLights: Int
    
    init(region: String, population: Int, stopLights: Int){
        self.region = region
        self.population = population
        self.numberOfStopLights = stopLights
    }
    
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
        print("Population: \(population), number of stoplights: \(numberOfStopLights), region: \(region)")
    }
    
    mutating func changePopulation(amount:Int){
        population += amount
    }
}