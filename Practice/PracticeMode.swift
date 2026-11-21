import SwiftUI

struct PracticeMode: View {
    var body: some View {
        ZStack {
            Image("PracticeRoom")
            VStack {
                NavigationLink(destination: PracticeAddition()) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 150, height: 50)
                            .foregroundColor(.mint)
                        Text("Addition")
                            .foregroundStyle(.white)
                    }
                }
                NavigationLink(destination: PracticeSubtraction()) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 150, height: 50)
                            .foregroundColor(.teal)
                            .ignoresSafeArea(edges: .all)
                            .shadow(radius: 5)
                        Text("Subtraction")
                            .foregroundStyle(.white)
                    }
                }
                NavigationLink(destination: PracticeMultiplication()) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 150, height: 50)
                            .foregroundColor(.blue)
                        Text("Multiplication")
                            .foregroundStyle(.white)
                    }
                }
                NavigationLink(destination: PracticeDivision()) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 150, height: 50)
                            .foregroundColor(.indigo)
                        Text("Division")
                            .foregroundStyle(.white)
                    }
                }
                NavigationLink(destination: MainMenu()) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 150, height: 50)
                            .foregroundColor(.red)
                        Image(systemName: "house.fill")
                            .foregroundStyle(.white)
                    }
                }
                
            }
        }
        .onAppear {
            MusicHelper.MusicPlayer.stopBackgroundMusic()
            MusicHelper.MusicPlayer.playPracticeBGM()
        }
        .navigationBarBackButtonHidden(true)
    }
    
    
    
}

#Preview {
    PracticeMode()
}


