import SwiftUI

struct StoryIntro: View {
    
    var body: some View { 
        ZStack {
            Image("StoryBG")
            
            TabView {
                ZStack{
                    RoundedRectangle(cornerRadius: 25)
                        .frame(width: 350, height: 450)
                    VStack{
                        Text("Swipe left to continue")
                            .foregroundStyle(.black)
                            .offset(y: -50)
                            .font(.system(size: 20))
                        
                        Image("StoryIntroKnight")
                            .resizable()
                            .frame(width: 300, height:250)
                            .padding()
                            .offset(y: -20)
                        Text("Once, there was a knight in the kingdom of Erynsdale, who was known as the bravest knight the kingdom ever had.")
                            .offset(y: -20)
                            .font(.system(size: 20))
                            .fixedSize(horizontal: false, vertical: true)
                            .frame(width: 300)
                            .foregroundStyle(.black)
                            .fontDesign(.serif)
                        
                    }
                }
                ZStack {
                    RoundedRectangle(cornerRadius: 25)
                        .frame(width: 350, height: 450)
                    VStack {
                        Image("StoryIntroBeach")
                            .resizable()
                            .frame(width: 300, height:250)
                            .padding()
                        Text("As a reward, the king gave him and his family a one week trip to the Bahamas.")
                            .font(.system(size: 20))
                            .fixedSize(horizontal: false, vertical: true)
                            .frame(width: 300)
                            .foregroundStyle(.black)
                            .fontDesign(.serif)
                        
                    }
                }
                ZStack {
                    RoundedRectangle(cornerRadius: 25)
                        .frame(width: 350, height: 450)
                    VStack {
                        Image("StoryIntroMonsters")
                            .resizable()
                            .frame(width: 300, height:250)
                            .padding()
                        Text("But when the knight and his family came back, the kingdom was conquered by the monsters.")
                            .font(.system(size: 20))
                            .fixedSize(horizontal: false, vertical: true)
                            .frame(width: 300)
                            .foregroundStyle(.black)
                            .fontDesign(.serif)
                        
                    }
                }
                ZStack {
                    RoundedRectangle(cornerRadius: 25)
                        .frame(width: 350, height: 450)
                    VStack {
                        Image("StoryIntroKnight")
                            .resizable()
                            .frame(width: 300, height:250)
                            .padding()
                        Text("He must now avenge the kingdom and climb the tower to defeat the evil boss!")
                            .font(.system(size: 20))
                            .fixedSize(horizontal: false, vertical: true)
                            .frame(width: 300)
                            .foregroundStyle(.black)
                            .fontDesign(.serif)
                        NavigationLink(destination: StoryMode()) {
                                ZStack {
                                        RoundedRectangle(cornerRadius: 10)
                                            .frame(width: 150, height: 50)
                                            .foregroundColor(.red)
                                        Text("Let's Go!")
                                            .foregroundStyle(.white)
                                    }
                                
                                
                            
                            
                        }.simultaneousGesture(TapGesture().onEnded {
                            LevelIndex.LevelIndex = 1
                        })
                        
                        
                            
                        
                            
                        
                        
                        
                        
                    }
                    
                }
            }
            .tabViewStyle(.page)
        }
        .onAppear {
            MusicHelper.MusicPlayer.stopBackgroundMusic()
            MusicHelper.MusicPlayer.playStoryBGM()
        }
        .navigationBarBackButtonHidden(true)
    }
        }
    


#Preview {
    StoryIntro()
}
