//
//  MemoryGame.swift
//  Memorize
//
//  Created by Shayan's MacBook Pro on 8/1/22.
//

import Foundation

struct MemoryGame<CardContent> {
    
    private(set) var cards : Array<Card>
    
    mutating func choose(_ card: Card){
        let chosenIndex = index(of: card)
        cards[chosenIndex].isFaceUp.toggle()
        print("\(cards)")
    }
    func index(of card: Card) -> Int{
        for index in 0..<cards.count{
            if cards[index].id == card.id{
                return index
            }
        }
        return  0
    }
    
    init(numberOfPairOfCards: Int , createCardContent: (Int) -> CardContent){
        cards = Array<Card>()
//        Add numberOfPairOfCards * 2 cards to card array
        for pairIndex in 0..<numberOfPairOfCards {
            let content : CardContent = createCardContent(pairIndex)
            cards.append(Card(content: content, id: pairIndex * 2))
            cards.append(Card(content: content, id: pairIndex * 2 + 1))
        }
    }
    
    struct Card : Identifiable{
        
        var isFaceUp : Bool = true
        var matched : Bool = false
        var content : CardContent
        var id: Int
    }
}
