//
//  ContentView.swift
//  Memorize

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewMddel : EmojiMemoryGame
    
    var body: some View {
        ScrollView{
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 65))]){
                ForEach(viewMddel.cards){ card in
                    cardView(card: card)
                        .aspectRatio(2/3 , contentMode: .fit)
                        .onTapGesture {
                            viewMddel.choose(card)
                        }
                }
            }
        }
    .foregroundColor(.red)
    .padding(.horizontal)
}
}

struct cardView : View{
    let card: MemoryGame<String>.Card
    
    var body: some View{
        ZStack{
            
            let shape = RoundedRectangle(cornerRadius: 20)
            if card.isFaceUp{
               shape.fill().foregroundColor(.white)
               shape.strokeBorder(lineWidth: 3)
                Text(card.content).font(.largeTitle)
            }else{
                shape.fill()
            }
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let game = EmojiMemoryGame()
        ContentView(viewMddel: game)
            .preferredColorScheme(.light)
        ContentView(viewMddel: game)
            .preferredColorScheme(.dark)
    }
}
