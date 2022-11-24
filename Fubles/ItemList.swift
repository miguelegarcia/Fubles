//
//  ItemList.swift
//  Fubles
//
//  Created by Miguel Garcia on 11/16/22.
//

import SwiftUI

struct ItemList: View {
    
    @State var match: MatchModel
    
    var body: some View {
       
        HStack{
            VStack(alignment: .leading) {
                Text("\(match.players) a side Football")
                    .font(.system(size: 20, weight: Font.Weight.heavy))
//                    .fontWeight(.heavy)
//                    .font(.custom("SF Pro Text", size: 22))
                    .padding(.bottom, 4)
                    
                Text(match.date)
                    .padding(.bottom, 0.5)
                    .font(.subheadline)
                Text(match.location)
                    .font(.footnote)
            }
            
            Spacer()
            
            VStack(alignment: .trailing) {
                Text("£\(match.formatPrice)")
                    .padding(.bottom, 6)
                    .font(.system(size: 16, weight: Font.Weight.heavy))
                    
                Text(match.time)
                    .padding(.bottom, 0.5)
                    .font(.subheadline)
                Text("\(match.curPlayers)")
                    .frame(width: 20, height: 20)
                    .padding(6)
                    .background(match.missPlayers() == 0 ? .red : match.missPlayers() == 1 ? .orange : .green)
                    .cornerRadius(5)
            }
            .padding(.top, 16)
        }
    }
}

//struct ItemList_Previews: PreviewProvider {
//    static var previews: some View {
//        ItemList()
//    }
//}
