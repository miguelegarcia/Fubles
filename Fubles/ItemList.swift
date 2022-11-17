//
//  ItemList.swift
//  Fubles
//
//  Created by Miguel Garcia on 11/16/22.
//

import SwiftUI

struct ItemList: View {
    var body: some View {
       
        HStack{
            VStack(alignment: .leading) {
                Text("6 a side Football")
                    .fontWeight(.heavy)
                    .font(.custom("SF Pro Text", size: 18))
                    .padding(.bottom, 0.5)
                    
                Text("Tuesday, 15, November")
                    .padding(.bottom, 0.5)
                Text("6.1 km - Max Sporting Club")

            }
            
            Spacer()
            
            VStack(alignment: .trailing) {
                Text("£6.00")
                    .padding(.bottom, 0.5)
                Text("20:00")
                    .padding(.bottom, 0.5)
                Text("2")
                    .frame(width: 20, height: 20)
                    .padding(6)
                    .background(.red)
                    .cornerRadius(5)
            }
        }
    }
}

struct ItemList_Previews: PreviewProvider {
    static var previews: some View {
        ItemList()
    }
}
