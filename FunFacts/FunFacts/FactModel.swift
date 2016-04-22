//
//  FactModel.swift
//  FunFacts
//
//  Created by Justin Li on 4/22/16.
//  Copyright © 2016 Justin Li. All rights reserved.
//

import GameKit

struct FactModel {
    let facts = [
        "Ants stretch when they wake up in the morning.",
        "Ostriches can run faster than horses.",
        "Olympic gold medals are actually made mostly of silver.",
        "You are born with 300 bones; by the time you are an adult you will have 206.",
        "It takes about 8 minutes for light from the Sun to reach Earth.",
        "Some bamboo plants can grow almost a meter in just one day.",
        "The state of Florida is bigger than England.",
        "Some penguins can leap 2-3 meters out of the water.",
        "On average, it takes 66 days to form a new habit.",
        "Mammoths still walked the Earth when the Great Pyramid was being built."
    ]
    
    func getRandomFact() -> String {
//        let randomNum = GKRandomSource.sharedRandom().nextIntWithUpperBound(facts.count)
        let randomNum = Int(arc4random_uniform((UInt32)(facts.count)))
        return facts[randomNum]
    }
}