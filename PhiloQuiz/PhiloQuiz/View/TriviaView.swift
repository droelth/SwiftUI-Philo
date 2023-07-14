//
//  TriviaView.swift
//  PhiloQuiz
//
//  Created by Berkay Sutlu on 14.07.2023.
//

import SwiftUI

struct TriviaView: View {
    @EnvironmentObject var triviaManager: TriviaManager
    var body: some View {
        if triviaManager.reachedEnd {
            VStack(spacing: 20){
                Text("Trivia Game").lilacTitle()
                
                Text("Congratz! You completed the game!")
                
                Text("You scored \(triviaManager.score) out of \(triviaManager.length)")
                
                Button {
                    Task.init{
                        await triviaManager.fetchTrivia()
                    }
                } label: {
                    primaryButton(text: "Play again")
                }

                
            }.foregroundColor(Color.accentColor).padding(10).frame(maxWidth: .infinity, maxHeight: .infinity).background(Color.gray.opacity(0.2))
        } else {
            QuestionView().environmentObject(triviaManager)
        }
        
        
    }
}

struct TriviaView_Previews: PreviewProvider {
    static var previews: some View {
        TriviaView().environmentObject(TriviaManager())
    }
}
