import SwiftUI

struct StoryOne: View {
    
    var body: some View { 
        ZStack {
            Image("StoryBG")
            
            TabView {
                ZStack{
                    RoundedRectangle(cornerRadius: 25)
                        .frame(width: 350, height: 450)
                    VStack{
                        
                        Image("StoryOneEnemy")
                            .resizable()
                            .frame(width: 300, height:250)
                        Text("On the first floor of the castle, the knight encountered some goblins.")
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
                        Image("StoryOneEnemy")
                            .resizable()
                            .frame(width: 300, height:250)
                        Text("The goblins contain addition and subtraction word problems on top of their heads.")
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
                        Image("StoryOneEnemy")
                            .resizable()
                            .frame(width: 300, height:250)
                        Text("Help the knight to solve these problems and defeat the goblins.")
                            .font(.system(size: 20))
                            .fixedSize(horizontal: false, vertical: true)
                            .frame(width: 300)
                            .foregroundStyle(.black)
                            .fontDesign(.serif)
                        NavigationLink(destination: StoryOnePlay()) {
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
            
            
        }
        .navigationBarBackButtonHidden(true)
    }

    
}



#Preview {
    StoryOne()
}

