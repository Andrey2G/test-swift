//
//  QuestionAnswersRow.swift
//  base
//
//  Created by user229277 on 1/28/23.
//

import Foundation

enum QuestionType {
    case MultipleChoice
    case Boolean
    case Text
}
struct QuestionAsnwersRow:Codable{
    var q: String
    var A: String!
    var B: String!
    var C: String!
    var D: String!
    var k: String

    func getType() -> QuestionType {
        switch k
        {
        case "A", "B","C","D":
            return QuestionType.MultipleChoice
        case "True","False":
            return QuestionType.Boolean
        default:
            return QuestionType.Text
        }
        
    }
}
