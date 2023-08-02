//
//  ContentView.swift
//  USER
//
//  Created by Shaima Alharbi on 15/01/1445 AH.
//

import SwiftUI

struct ContentView: View {
    @State private var score: Int = 0
    var body: some View {
        VStack(spacing: 10) {
            Text("\(score)")
                .font(Font.largeTitle)
            IncrementScoreView(score: $score)
        }
    }
}

struct IncrementScoreView: View {
@Binding var score: Int
var body: some View {
    Button {
        score += 1
    } label: {
        Text("Increment by 1")
            .font(Font.body)
    }
}
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
