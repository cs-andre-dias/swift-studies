//
//  main.swift
//  MonsterTown
//
//  Created by Andre Dias on 9/1/16.
//  Copyright © 2016 Andre Dias. All rights reserved.
//

var myTown = Town()
let ts = myTown.townSize
print(ts)
myTown.changePopulation(200000)
print("\(myTown.townSize), \(myTown.population)")


let fredTheZombie = Zombie()

fredTheZombie.town = myTown

fredTheZombie.terrorizingTown()
fredTheZombie.town?.printTownDescription()

fredTheZombie.changeName("Fred The Zombie", walkWithLimp: false)

fredTheZombie.terrorizingTown()

fredTheZombie.town?.printTownDescription()

print("Victim pool: \(fredTheZombie.victimPool)")
fredTheZombie.victimPool = 500
print("Victim Pool: \(fredTheZombie.victimPool); population: \(fredTheZombie.town?.population)")