//
//  ChaptersList.swift
//  base
//
//  Created by user229277 on 1/28/23.
//

import SwiftUI

struct ChaptersList: View {
    @State var showIntersitialAd: Bool = false
    init() {
        
                UITableView.appearance().backgroundColor = UIColor(Color.clear)
            
    }
    var body: some View{
        VStack{
            Text("CII R04 Pensions & Retirement Planning")
            NavigationView {
                List(chapters) { chapter in
                    ZStack {
                        Button("") {}
                        NavigationLink(destination:
                                        StartTestView(chapter: chapter.title)
                                       
                        )
                        {
                            ChapterRow(chapter: chapter)
                            
                            
                        }
                    }.background(Color(hex: "bad859"))
                        .cornerRadius(10)
                        //.listRowBackground(Color.blue)
                    
                }
                .onAppear {       UITableView.appearance().separatorStyle = .none     }
                //.listRowSeparator(.hidden)
            }
        }.presentInterstitialAd(isPresented: $showIntersitialAd,  adUnitId: "ca-app-pub-3940256099942544/4411468910")
    }
}

struct ChaptersList_Previews: PreviewProvider {
    static var previews: some View {
        ChaptersList()
    }
}
