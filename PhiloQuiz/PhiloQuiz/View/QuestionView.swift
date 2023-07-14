//
//  QuestionView.swift
//  PhiloQuiz
//
//  Created by Berkay Sutlu on 14.07.2023.
//

import SwiftUI

struct QuestionView: View {
    @EnvironmentObject var triviaManager: TriviaManager
    
    var body: some View {
        VStack(spacing: 40) {
            HStack{
                Text("Trivia Game").lilacTitle()
                Spacer()
                Text("\(triviaManager.index + 1) out of \(triviaManager.length)").foregroundColor(.accentColor).fontWeight(.heavy)
            }
            progressBar(progress: triviaManager.progress)
            
            VStack(alignment: .leading, spacing: 20) {
                Text(triviaManager.question)
                    .font(.system(size: 20)).bold().foregroundColor(.gray)
                ForEach(triviaManager.answerChoices, id: \.id) { answer in
                    answerRow(answer: answer).environmentObject(triviaManager)
                }
                
            }
            Button {
                triviaManager.goToNextQuestion()
            } label: {
                primaryButton(text: "Next", background: triviaManager.answerSelected ? Color.accentColor : Color.gray)
            }.disabled(!triviaManager.answerSelected)

            
            
            Spacer()
            
        }
        .padding()
        .frame(maxWidth: .infinity,maxHeight: .infinity).background(Color.gray.opacity(0.2)).navigationBarBackButtonHidden(true)
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView().environmentObject(TriviaManager())
    }
}
