//
//  QuestionView.swift
//  base
//
//  Created by user229277 on 1/31/23.
//

import SwiftUI

struct QuestionView: View {
    var chapterTitle: String
    @Binding var txt:String
    var body: some View {
        VStack{
            Text(chapterTitle)
            AnswersView(row: chapters[0].data[0])
            TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/, text: $txt)
                .keyboardType(/*@START_MENU_TOKEN@*/.default/*@END_MENU_TOKEN@*/)
                  

        }
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView(chapterTitle: "Chapter title", txt: .constant("esgsfgfs"))
    }
}
