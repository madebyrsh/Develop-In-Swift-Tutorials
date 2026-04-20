//
//  ContentView.swift
//  ChatPrototype
//
//  Created by Shayne Ryu on 4/20/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 25) {
            Text("Knock, Knock!")
                .padding()
                .background(Color.yellow, in: RoundedRectangle(cornerRadius: 8))
            Text("Who's there?")
                .padding()
                .background(Color.teal, in: RoundedRectangle(cornerRadius: 8))
            Text("Extend My App")
                .padding()
                .background(Color.purple, in: RoundedRectangle(cornerRadius: 8))
                .shadow(color: Color.black, radius: 0.2, x: 0.4, y: 0.7)
            Text("Padding order")
                .background(Color.green, in: RoundedRectangle(cornerRadius: 8))
                .padding()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
