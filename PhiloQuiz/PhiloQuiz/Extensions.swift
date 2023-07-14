//
//  Extensions.swift
//  PhiloQuiz
//
//  Created by Berkay Sutlu on 14.07.2023.
//

import Foundation
import SwiftUI

extension Text {
    func lilacTitle() -> some View {
        self.font(.title)
            .fontWeight(.heavy)
            .foregroundColor(Color("AccentColor"))
    }
}
