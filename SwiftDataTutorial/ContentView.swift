//
//  ContentView.swift
//  SwiftDataTutorial
//
//  Created by Hugo Peyron on 31/08/2024.
//

import SwiftUI

struct ContentView: View {
  @Environment(\.modelContext) var context

    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!") 

          Button (action: { context.undoManager?.undo() }, label: {
            Text("Undo")
          })

        }
        .padding()
    }
}

#Preview {
    ContentView()
}
