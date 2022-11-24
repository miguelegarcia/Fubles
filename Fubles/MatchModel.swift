//
//  MatchModel.swift
//  Fubles
//
//  Created by Miguel Garcia on 11/17/22.
//

import SwiftUI

struct Organizer {
    var name: String
    var matches: Int
}

struct MatchModel: Identifiable {
    internal let id = UUID()
    var players: Int
    var date: String
    var location: String
    var price: Double
    var curPlayers: Int
    var time: String
    var organizer: Organizer
    
    var formatPrice: String  {
        String(format: "%.2f", self.price)
    }
    
    // red: players == curPlayers
    // yellow: avg(players) < curPlayers
    // green: avg(players) > curPlayers
    func missPlayers() -> Int {
        if players == curPlayers {
            return 0
        } else if players / 2 < curPlayers {
            return 1
        } else {
            return 2
        }
    }
}

let matches: [MatchModel] = [
    MatchModel(players: 6, date: "Tuesday, 15, November", location: "6.1 km - Max Sporting Club", price:  6.00, curPlayers: 3, time: "20:00", organizer: Organizer(name: "Manlio Orlandi", matches: 75)),
    MatchModel(players: 8, date: "Tuesday, 15, November", location: "5 km - Ippoarena Calciotto Aganano", price:  9.50, curPlayers: 4, time: "20:35", organizer: Organizer(name: "Manlio Orlandi", matches: 75)),
    MatchModel(players: 5, date: "Tuesday, 14, November", location: "4.2 km - Centro Sportivo Flegreo", price:  7.00, curPlayers: 2, time: "19:35", organizer: Organizer(name: "Manlio Orlandi", matches: 75)),
    MatchModel(players: 5, date: "Tuesday, 14, November", location: "4.2 km - Centro Sportivo Flegreo", price:  7.00, curPlayers: 3, time: "19:35", organizer: Organizer(name: "Manlio Orlandi", matches: 75)),
    MatchModel(players: 6, date: "Tuesday, 15, November", location: "6.1 km - Max Sporting Club", price:  6.00, curPlayers: 4, time: "20:00", organizer: Organizer(name: "Manlio Orlandi", matches: 75)),
    MatchModel(players: 8, date: "Tuesday, 15, November", location: "5 km - Ippoarena Calciotto Aganano", price:  9.50, curPlayers: 8, time: "20:35", organizer: Organizer(name: "Manlio Orlandi", matches: 75)),
    MatchModel(players: 5, date: "Tuesday, 14, November", location: "4.2 km - Centro Sportivo Flegreo", price:  7.00, curPlayers: 5, time: "19:35", organizer: Organizer(name: "Manlio Orlandi", matches: 75)),
    MatchModel(players: 5, date: "Tuesday, 14, November", location: "4.2 km - Centro Sportivo Flegreo", price:  7.00, curPlayers: 5, time: "19:35", organizer: Organizer(name: "Manlio Orlandi", matches: 75))

]

