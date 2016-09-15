//
//  Mayor.swift
//  MonsterTown
//
//  Created by Andre Dias on 9/14/16.
//  Copyright © 2016 Andre Dias. All rights reserved.
//

struct Mayor {
    var anxietyLevel: Int
    var pronunciation: String {
        return "I'm deeply saddened to hear about this latest tragedy. I promise that my office is looking into the nature of this rash of violence."
    }
    
    init(anxietyLevel: Int){
        self.anxietyLevel = anxietyLevel
    }
}