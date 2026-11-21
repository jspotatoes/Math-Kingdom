import SwiftUI

struct StoryThree: View {
    
    var body: some View { 
        ZStack {
            Image("StoryBG")
            
            TabView {
                ZStack{
                    RoundedRectangle(cornerRadius: 25)
                        .frame(width: 350, height: 450)
                    VStack{
                        
                        Image("StoryThreeEnemy")
                            .resizable()
                            .frame(width: 300, height:250)
                        Text("On the final floor of the castle, the knight encountered the final bosses. The king goblin, the alpha wolf, and the feared red dragon.")
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
                        Image("StoryThreeEnemy")
                            .resizable()
                            .frame(width: 300, height:250)
                        Text("This combination allows the three kinds of monsters to combine word problems and create the hardest problems..")
                            .font(.system(size: 20))
                            .fixedSize(horizontal: false, vertical: true)
                            .frame(width: 300)
                            .foregroundStyle(.black)
                            .fontDesign(.serif)
                        
                    }
                }
                ZStack{
                    RoundedRectangle(cornerRadius: 25)
                        .frame(width: 350, height: 500)
                    VStack {
                        Image("StoryThreeEnemy")
                            .resizable()
                            .frame(width: 300, height:250)
                        Text("Help the knight for the final time to solve these problems and defeat the monsters.")
                            .font(.system(size: 20))
                            .fixedSize(horizontal: false, vertical: true)
                            .frame(width: 300)
                            .foregroundStyle(.black)
                            .fontDesign(.serif)
                        NavigationLink(destination: StoryThreePlay()) {
                            ZStack {
                                RoundedRectangle(cornerRadius: 10)
                                    .frame(width: 150, height: 50)
                                    .foregroundColor(.green)
                                Text("Let's Go!")
                                    .foregroundStyle(.white)
                            }
                            
                            
                        }
                        NavigationLink(destination: StoryMode()) {
                            ZStack {
                                RoundedRectangle(cornerRadius: 10)
                                    .frame(width: 175, height: 50)
                                    .foregroundColor(.red)
                                Text("Back to Story Mode")
                                    .foregroundStyle(.white)
                            }
                            
                            
                        }
                        
                    }
                }
                
                
            }
            .tabViewStyle(.page)
            
            
        } .onAppear {
            MusicHelper.MusicPlayer.stopBackgroundMusic()
            MusicHelper.MusicPlayer.playFinalBGM()
        }
        .navigationBarBackButtonHidden(true)
    }
    
    
}



#Preview {
    StoryThree()
}





