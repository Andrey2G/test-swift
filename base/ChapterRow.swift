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
            Text(chapter.title)
            .font(.title3)
                .foregroundColor(.black)
                .padding(4)
                
                //.background(Rectangle().foregroundColor(Color(hex: "bad859")))
                //.cornerRadius(10)

              
    }
}

struct ChapterRow_Previews: PreviewProvider {
    static var previews: some View {
             
        ChapterRow(chapter: chapters[0])
        
    }
}
