//
//  MatchDetailsView.swift
//  Fubles
//
//  Created by Miguel Garcia on 11/17/22.
//

import SwiftUI

struct MatchDetailsView: View {
    var body: some View {
        
        VStack {
            Form {
                Image("Pitch1")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .listRowInsets(EdgeInsets())   
                Text("jgbgfv")
            }
            
                
        }
        .padding(0)
//        .background(Color.)
//        .cornerRadius(10)
        .navigationTitle("Fubles")
        .navigationBarTitleDisplayMode(.inline)
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

struct MatchDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        MatchDetailsView()
    }
}
