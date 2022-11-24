//
//  ModalView.swift
//  Fubles
//
//  Created by Miguel Garcia on 11/23/22.
//

import SwiftUI

struct ModalView: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            HStack {
                Button("Cancel") {
                    dismiss()
                }
                .fontWeight(.semibold)
                .padding(.horizontal)
                
                Spacer()
                
                Text("Create Match")
                    .fontWeight(.semibold)
                
                Spacer()
                
                Button("Done") {
                    dismiss()
                }
                .fontWeight(.semibold)
                
            }
            .padding(.trailing, 20)
            .padding(.top, 20)
            
            Spacer()
        }
        
    }
}

struct ModalView_Previews: PreviewProvider {
    static var previews: some View {
        ModalView()
    }
}
