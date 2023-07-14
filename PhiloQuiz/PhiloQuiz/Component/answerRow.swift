//
//  answerRow.swift
//  PhiloQuiz
//
//  Created by Berkay Sutlu on 14.07.2023.
//

import SwiftUI

struct answerRow: View {
    var answer: Answer
    @State private var isSelected = false
    @EnvironmentObject var triviaManager: TriviaManager
    
    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: "circle.fill").font(.caption)
            
            Text(answer.text).bold()
            
            if isSelected {
                Spacer()
                Image(systemName: answer.isCorrect ? "checkmark.circle.fill" : "x.circle.fill").foregroundColor(answer.isCorrect ? Color.green : Color.red)
            }
            
        }.padding()
            .frame(maxWidth: .infinity,alignment: .leading)
            .foregroundColor(triviaManager.answerSelected ? (isSelected ? Color.accentColor : .gray) : Color.accentColor)
            .background(.white)
            .cornerRadius(10)
            .shadow(color: isSelected ? (answer.isCorrect ? Color.green : Color.red) : .gray, radius: 5,x: 0.5, y:0.5)
            .onTapGesture {
                if !triviaManager.answerSelected {
                    isSelected = true
                    triviaManager.selectAnswer(answer: answer)
                }
                
            }
    }
}

struct answerRow_Previews: PreviewProvider {
    static var previews: some View {
        answerRow(answer: Answer(text: "Single", isCorrect: false)).environmentObject(TriviaManager())
    }
}
