//
//  QuestionView.swift
//  base
//
//  Created by user229277 on 1/31/23.
//

import SwiftUI

struct QuestionView: View {
    var chapterTitle: String
    
    var body: some View {
        VStack{
            Text(chapterTitle)
            AnswersView(row: chapters[0].data[0])
        }
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView(chapterTitle: "Chapter title")
    }
}
