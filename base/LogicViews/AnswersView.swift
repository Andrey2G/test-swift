//
//  AnswersView.swift
//  base
//
//  Created by user229277 on 1/31/23.
//

import SwiftUI

struct AnswersView: View {
    var row: QuestionAsnwersRow
    var body: some View {
        Text(row.q)
    }
}

struct AnswersView_Previews: PreviewProvider {
    static var previews: some View {
        AnswersView(row: chapters[0].data[0])
    }
}
