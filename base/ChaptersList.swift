//
//  ChaptersList.swift
//  base
//
//  Created by user229277 on 1/28/23.
//

import SwiftUI

struct ChaptersList: View {
    var body: some View{
        NavigationView {
            List(chapters) { chapter in
                NavigationLink {
                    StartTestView(chapter: chapter.title)
                } label: {
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
