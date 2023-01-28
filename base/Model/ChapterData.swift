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
    var data: [QuestionAsnwersRow] = Array()
}

