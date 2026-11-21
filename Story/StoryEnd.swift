import SwiftUI

struct StoryEnd: View {
    
    var body: some View { 
        ZStack {
            Image("StoryBG")
            
            TabView {
                ZStack{
                    RoundedRectangle(cornerRadius: 25)
                        .frame(width: 350, height: 450)
                    VStack{
                        
                        Image("StoryEnd")
                            .resizable()
                            .frame(width: 300, height:250)
                        Text("After defeating the three monsters, the knight saved the king.")
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
                        Image("StoryEnd")
                            .resizable()
                            .frame(width: 300, height:250)
                        Text("As a reward, the king promoted the knight to his personal head guard and gave him and his family half of his riches.")
                            .font(.system(size: 20))
                            .fixedSize(horizontal: false, vertical: true)
                            .frame(width: 300)
                            .foregroundStyle(.black)
                            .fontDesign(.serif)
                        
                    }
                }
                ZStack{
                    RoundedRectangle(cornerRadius: 25)
                        .frame(width: 350, height: 450)
                    VStack {
                        Image("StoryEnd")
                            .resizable()
                            .frame(width: 300, height:250)
                        NavigationLink(destination: MainMenu()) {
                            ZStack {
                                RoundedRectangle(cornerRadius: 10)
                                    .frame(width: 200, height: 150)
                                    .foregroundColor(.green)
                                Text("The End")
                                    .foregroundStyle(.white)
                                    .font(.system(size: 40))
                            }
                            
                            
                        }
                        
                    }
                }
                
                
            }
            .tabViewStyle(.page)
            
            
        } .onAppear {
            MusicHelper.MusicPlayer.stopBackgroundMusic()
            MusicHelper.MusicPlayer.playStoryBGM()
        }
        
    }
    
    
}



#Preview {
    StoryEnd()
}







