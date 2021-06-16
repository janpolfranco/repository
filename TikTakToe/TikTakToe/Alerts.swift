//
//  Alerts.swift
//  TikTakToe
//
//  Created by John Paul M. Franco on 6/16/21.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    
    var title: Text
    var message: Text
    var buttonTitle: Text
    var winner: Player?
}

struct AlertContent {
    static let humanWin = AlertItem(title: Text("You Win!"),
                             message: Text("You are so smart. You beat your own AI"),
                             buttonTitle: Text("Got it!"),
                             winner: .human)
    
    static let computerWin = AlertItem(title: Text("You Lost!"),
                                message: Text("You lost to your own AI?"),
                                buttonTitle: Text("Try Again"),
                                winner: .computer)
    
    static let draw = AlertItem(title: Text("Draw"),
                         message: Text("Don't worry just play again until one wins"),
                         buttonTitle: Text("Rematch"))
}
