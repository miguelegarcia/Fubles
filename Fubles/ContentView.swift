//
//  ContentView.swift
//  Fubles
//
//  Created by Miguel Garcia on 11/16/22.
//

import SwiftUI

struct ContentView: View {
    @State private var searchText = ""
    
    var body: some View {
        
        NavigationView {
            VStack {
                List {
                    ForEach((1...3).reversed(), id: \.self) {_ in
                        NavigationLink(destination: Text("Match")) {
                            ItemList()
                                .frame(height: 100)
                        }
                   }
                    .padding(5)
                }
            }
            .searchable(text: $searchText)
            .navigationTitle("Fubles")
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    

                    Button(action: {
                        print("New Game")
                    }, label: {
                        Image(systemName: "plus")
                    })
                }
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
