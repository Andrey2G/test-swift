//
//  ChapterRow.swift
//  base
//
//  Created by user229277 on 1/28/23.
//

import SwiftUI

struct ChapterRow: View {
    var chapter: ChapterData

    var body: some View {
        HStack {
            
            Text(chapter.title)
                

        }.background(Color.init(hex:"bad859"))
    }
}

struct ChapterRow_Previews: PreviewProvider {
    static var previews: some View {
             
        ChapterRow(chapter: chapters[0])
        
    }
}
