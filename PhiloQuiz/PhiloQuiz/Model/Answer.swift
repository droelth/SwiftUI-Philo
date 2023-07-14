//
//  Answer.swift
//  PhiloQuiz
//
//  Created by Berkay Sutlu on 14.07.2023.
//

import Foundation

struct Answer: Identifiable {
    var id = UUID()
    var text: AttributedString
    var isCorrect: Bool
}
