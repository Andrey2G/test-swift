//
//  ChaptersList.swift
//  base
//
//  Created by user229277 on 1/28/23.
//

import SwiftUI

struct ChaptersList: View {
    init()
    {
        //UINavigationBar.appearance().backgroundColor=UIColor.init(Color.init("bad859"))
        
    }
    @State var showIntersitialAd: Bool = false
    var body: some View{
        Text("CII R01 Financial Services Regulation and Ethics")
        NavigationView {
            List(chapters) { chapter in
                NavigationLink(destination:
                                StartTestView(chapter: chapter.title)
                    .presentInterstitialAd(isPresented: $showIntersitialAd,  adUnitId: "ca-app-pub-3940256099942544/4411468910")
                )
                {
                    ChapterRow(chapter: chapter)
                }
            }
        }
    }
}

struct ChaptersList_Previews: PreviewProvider {
    static var previews: some View {
        ChaptersList()
    }
}
