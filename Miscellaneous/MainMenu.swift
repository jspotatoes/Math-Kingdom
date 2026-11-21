import SwiftUI
var StoryModeCount: [String] = ["StoryMode()"]

struct MainMenu: View {
    @State var Count = 0
    var body: some View {
        NavigationStack {
            ZStack {
                Image("MainBG")
                    .resizable()
                    .scaledToFill()
                VStack {
                    Image("Logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300)
                    if LevelIndex.LevelIndex == 0 {
                        NavigationLink(destination: StoryIntro())  {
                            ZStack {
                                RoundedRectangle(cornerRadius: 10)
                                    .frame(width: 205, height: 55)
                                    .foregroundColor(.white)
                                RoundedRectangle(cornerRadius: 10)
                                    .frame(width: 200, height: 50)
                                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                                Text("STORY MODE")
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    .font(.system(size:22))
                                    .foregroundStyle(.white)
                            }
                        }
                    }
                        if LevelIndex.LevelIndex > 0 {
                            NavigationLink(destination: StoryMode())  {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 10)
                                        .frame(width: 205, height: 55)
                                        .foregroundColor(.white)
                                    RoundedRectangle(cornerRadius: 10)
                                        .frame(width: 200, height: 50)
                                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                                    Text("STORY MODE")
                                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                        .font(.system(size:22))
                                        .foregroundStyle(.white)
                                }
                            }
                        }
                    
                    
                    NavigationLink(destination: PracticeMode()) {
                        
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 205, height: 55)
                                .foregroundColor(.white)
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 200, height: 50)
                                .foregroundColor(.pink)
                            Text("PRACTICE MODE")
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                .font(.system(size:22))
                                .foregroundStyle(.white)
                        }
                        
                    }
                    
                    NavigationLink(destination: Credits())  {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 205, height: 55)
                                .foregroundColor(.white)
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 200, height: 50)
                                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                            Text("CREDITS")
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                .font(.system(size:22))
                                .foregroundStyle(.white)
                        }
                    }
                }
            }
        }
        .navigationBarBackButtonHidden(true)
        .onAppear {
            MusicHelper.MusicPlayer.stopBackgroundMusic()
            MusicHelper.MusicPlayer.playBackgroundMusic()
        }
    
        
    }
}
