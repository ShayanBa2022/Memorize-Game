//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Shayan's MacBook on 4/19/22.
//

import SwiftUI

@main
struct MemorizeApp: App {
    let game = EmojiMemoryGame()
    var body: some Scene {
        WindowGroup {
            ContentView(viewMddel: game)
        }
    }
}
