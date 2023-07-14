
import SwiftUI

struct HomeView: View {
    @StateObject var triviaManager = TriviaManager()
    var body: some View {
        NavigationView {
            VStack(spacing: 40) {
                VStack(spacing: 20){
                    Text("Trivia Game")
                        .lilacTitle()
                    Text("Are you ready to test out your trivia skills?").foregroundColor(Color("AccentColor"))
                    
                }
                NavigationLink {
                    TriviaView().environmentObject(triviaManager)
                } label: {
                    primaryButton(text: "Let's go!")
                }

               
                
            }.frame(maxWidth: .infinity,maxHeight: .infinity)
                .edgesIgnoringSafeArea(.all)
            .background(.gray.opacity(0.2))
        }
    }
}



struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
