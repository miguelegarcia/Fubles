//
//  ContentView.swift
//  Fubles
//
//  Created by Miguel Garcia on 11/16/22.
//

import SwiftUI

struct ContentView: View {
    @State private var searchText = ""
    @State private var isOpen: Bool = false
    
    var body: some View {
        
        NavigationView {
            List {
                ForEach(matches) { match in
                    NavigationLink(destination: MatchDetailsView(match: match)) {
                        ItemList(match: match)
                            .frame(height: 100)
                    }
                }
                .padding(5)
            }
            .navigationTitle("Fubles")
            .searchable(text: $searchText)
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    Button(action: {
                        isOpen.toggle()
                    }, label: {
                        Image(systemName: "plus")
                    })
                }
            }
            .sheet(isPresented: $isOpen) {
                ModalView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


//
//
//import SwiftUI
//
//struct ContentView: View {
//    @State private var searchText = ""
//    @State private var isOpen: Bool = false
//
//    var body: some View {
//
//        NavigationView {
//
//            VStack {
//                    ScrollView(showsIndicators: false) {
////                    Section(header: Text("")
////                        .frame(maxWidth: .infinity, alignment: .leading)
////                        .padding(.horizontal, 16)) {
//                        List {
//                            ForEach(matches) { match in
//                                NavigationLink(destination: MatchDetailsView()) {
//                                    ItemList(match: match)
//                                        .frame(height: 100)
//                                }
//                            }
//
//                            .padding(5)
//                        }
//                        .frame(height: 440)
//                    //}
//
////                    Section(header: Text("Map").frame(maxWidth: .infinity, alignment: .leading)
////                        .padding(.horizontal, 16)) {
////                        MapView()
////                    }
//                }
//            }
//            .navigationTitle("Fubles")
//            .searchable(text: $searchText)
//            .toolbar {
//                ToolbarItemGroup(placement: .navigationBarTrailing) {
//                    Button(action: {
//                        isOpen.toggle()
//                    }, label: {
//                        Image(systemName: "plus")
//                    })
//                }
//            }
//            .sheet(isPresented: $isOpen) {
//                Text("New Match")
//                    .foregroundColor(.yellow)
//            }
//        }
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
