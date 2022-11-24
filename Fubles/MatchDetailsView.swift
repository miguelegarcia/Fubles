//
//  MatchDetailsView.swift
//  Fubles
//
//  Created by Miguel Garcia on 11/17/22.
//

import SwiftUI

struct MatchDetailsView: View {
    
    var match: MatchModel
    
    var body: some View {
        
        VStack {
            Form {
                Image("Pitch1")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .listRowInsets(EdgeInsets())
                VStack {
                    HStack {
                        VStack(alignment: .leading) {
                            Text("\(match.players) a side Football")
                                .font(.system(size: 25, weight: Font.Weight.heavy))
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                            Text(match.date)
                                .font(.subheadline)
                            Text(match.location)
                                .fixedSize(horizontal: false, vertical: true)
                            
                                .font(.subheadline)
                                .padding(.bottom, 0.5)
                            
                            Text("Time: \(match.time)  Cost: £\(match.formatPrice)")
                                .font(.subheadline)
                                .bold()
                        }
                        
                        Button("Join") {
                            print("Join")
                        }
                        .padding(.horizontal, 24)
                        .padding(.vertical, 12)
                        .background(.blue)
                        .bold()
                        .foregroundColor(.white)
                        .clipShape(Capsule())
                    }
                    .padding(.bottom, 16)
                    
                    Divider()
                    
                    VStack(alignment: .leading) {
                        HStack {
                            Text(match.organizer.name)
                                .font(.headline)
                                .fontWeight(.heavy)
                                .frame(alignment: .leading)

                            Text("- Organizer")
                                .font(.subheadline)
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                        
                        Text("\(match.organizer.matches) games organized")
                            .font(.subheadline)
                    }
                    .padding(.bottom, 16)
                    
                    Divider()
                    
                    VStack(alignment: .leading) {
                        Text("You can unsubscribe within 16:00 of 15 November 2022")
                            .font(.subheadline)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    .padding(.bottom, 16)
                }
            }
            .buttonStyle(.plain)
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

//struct MatchDetailsView_Previews: PreviewProvider {
//    static var previews: some View {
//        MatchDetailsView()
//    }
//}
