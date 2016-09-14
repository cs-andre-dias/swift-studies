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
myTown.changePopulation(2000)
print("\(myTown.townSize), \(myTown.population)")


var fredTheZombie = Zombie()

fredTheZombie.town = myTown

print(Monster.makeSpookyNoise)
print(Zombie.makeSpookyNoise)
if Zombie.isTerrifying {
    print("Run away!")
}

fredTheZombie.terrorizingTown()
fredTheZombie.town?.printTownDescription()

fredTheZombie.changeName("Fred The Zombie", walkWithLimp: false)

fredTheZombie.terrorizingTown()

myTown.changePopulation(3000)
fredTheZombie.town?.printTownDescription()

print("Victim pool: \(fredTheZombie.victimPool)")
fredTheZombie.victimPool = 30
print("Victim Pool: \(fredTheZombie.victimPool)")


let vampire = Vampire()
vampire.town = myTown

vampire.terrorizingTown()
vampire.terrorizingTown()

print(Vampire.makeSpookyNoise)

vampire.town?.printTownDescription()

print("There are \(vampire.vampireThrall.count) vampires")

print(vampire.name)


