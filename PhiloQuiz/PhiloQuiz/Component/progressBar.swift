//
//  progressBar.swift
//  PhiloQuiz
//
//  Created by Berkay Sutlu on 14.07.2023.
//

import SwiftUI

struct progressBar: View {
    var progress: CGFloat
    
    var body: some View {
        ZStack(alignment: .leading)
        {
            Rectangle().frame(maxWidth: 350,maxHeight: 4)
                .foregroundColor(.gray.opacity(0.7)).cornerRadius(10)
            
            Rectangle().frame(width: progress,height: 4)
                .foregroundColor(.accentColor).cornerRadius(10)
            
        }
    }
}

struct progressBar_Previews: PreviewProvider {
    static var previews: some View {
        progressBar(progress: 10)
    }
}
