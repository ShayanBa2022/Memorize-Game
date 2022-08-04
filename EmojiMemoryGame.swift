//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Shayan's MacBook Pro on 8/1/22.
//

import SwiftUI

//func makeCardContent(index:Int) -> String {
//    return "😂"
//}
class EmojiMemoryGame: ObservableObject {
    static let emojis = ["🚗","🚕","🚙","🚌","🚎","🏎","🚓","🚑","🚒","🚐","🛻","🚚","🚛","🚜","🛵","🏍","🚠","🚝","🚆",
                  "✈️","🚂","🚁","🛥","🛳","🛶","🚀"]
    @Published private var model: MemoryGame<String> = MemoryGame<String>(numberOfPairOfCards: 4){ pairIndex in  emojis[pairIndex]}
    
    var cards: Array<MemoryGame<String>.Card>{
        return model.cards 
    }
    
    // Mark: - Intent(s)
    
    func choose(_ card : MemoryGame<String>.Card){
        model.choose(card)
    }
}
