//
//  ChapterData.swift
//  base
//
//  Created by user229277 on 1/28/23.
//

import Foundation
import SwiftUI

struct ChapterData: Codable, Identifiable{
    var id: Int
    var title: String
    
    var data: [QuestionAsnwersRow]
    
    enum CodingKeys: String, CodingKey {
            case id, title, data
        
        }
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decodeIfPresent(Int.self, forKey: .id) ?? 0
        title = try values.decodeIfPresent(String.self, forKey: .title) ?? UUID().uuidString
        data = try values.decodeIfPresent([QuestionAsnwersRow].self, forKey: .data)!
    }
     
}

