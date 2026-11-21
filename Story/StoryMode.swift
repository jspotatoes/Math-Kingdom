import SwiftUI


struct StoryMode: View {
    var body: some View {
        ZStack {
            Image("MainBG")
                .resizable()
                .scaledToFill()
            
            VStack {
                if LevelIndex.LevelIndex > 2 {
                    NavigationLink(destination: StoryThree()) {
                        ZStack {
                            if LevelIndex.LevelIndex > 3 {
                                Circle()
                                    .frame(height: 80)
                                    .foregroundColor(.white)
                                Circle()
                                    .frame(height: 70)
                                    .foregroundColor(.green)
                            } else {
                                Circle()
                                    .frame(height: 80)
                                    .foregroundColor(.white)
                                Circle()
                                    .frame(height: 70)
                                    .foregroundColor(.pink)
                            }
                            Text("3")
                                .foregroundStyle(.white)
                        }
                    }
                } else {
                    ZStack {
                        Circle()
                            .frame(height: 80)
                            .foregroundColor(.gray)
                        Text("3")
                            .foregroundStyle(.white)
                    }
                    .opacity(0.5)
                }
                if LevelIndex.LevelIndex > 1 {
                    NavigationLink(destination: StoryTwo()) {
                        ZStack {
                            if LevelIndex.LevelIndex > 2 {
                                Circle()
                                    .frame(height: 80)
                                    .foregroundColor(.white)
                                Circle()
                                    .frame(height: 70)
                                    .foregroundColor(.green)
                            } else {
                                Circle()
                                    .frame(height: 80)
                                    .foregroundColor(.white)
                                Circle()
                                    .frame(height: 70)
                                    .foregroundColor(.pink)
                            }
                            Text("2")
                                .foregroundStyle(.white)
                        }
                    }
                } else {
                        ZStack {
                            Circle()
                                .frame(height: 80)
                                .foregroundColor(.gray)
                            Text("2")
                                .foregroundStyle(.white)
                        }
                        .opacity(0.5)
                }
                NavigationLink(destination: StoryOne()) {
                    if LevelIndex.LevelIndex > 1 {
                        ZStack {
                            Circle()
                                .frame(height: 80)
                                .foregroundColor(.white)
                            Circle()
                                .frame(height: 70)
                                .foregroundColor(.green)
                            Text("1")
                                .foregroundStyle(.white)
                        }
                    } else {
                        ZStack {
                            Circle()
                                .frame(height: 80)
                                .foregroundColor(.white)
                            Circle()
                                .frame(height: 70)
                                .foregroundColor(.red)
                            Text("1")
                                .foregroundStyle(.white)
                        }
                    }
                    
                    
                }
                NavigationLink(destination: MainMenu()) {
                    ZStack {
                        Circle()
                            .frame(height: 80)
                            .foregroundColor(.white)
                        Circle()
                            .frame(height: 70)
                            .foregroundColor(.green)
                        Image(systemName: "house.fill")
                            .foregroundStyle(.white)
                    }
                }
                
            }
        } .onAppear {
            MusicHelper.MusicPlayer.stopBackgroundMusic()
            MusicHelper.MusicPlayer.playStoryBGM()
        }
        
        .navigationBarBackButtonHidden(true)
    }
    
    
}

#Preview {
    StoryMode()
}
