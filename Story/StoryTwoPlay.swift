import SwiftUI


var TextQuestion2: [String] = ["Lily is running a lemonade stand during the summer. She makes 4 full pitchers of lemonade every day to sell to her customers. She plans to keep her stand open for 13 days straight. By the end of this period, how many pitchers of lemonade will she have made in total?", "A library is ordering books for a new reading program. They purchase 7 identical sets of books, with each set containing 12 books. To find out how many books will be added to the library’s collection, they need to calculate the total number of books purchased. How many books did the library order?", "A party supply store receives a shipment of 144 colorful balloons. They want to divide them into equal bunches to decorate different sections of an event space. If they decide to create 12 identical balloon bunches, how many balloons will be in each bunch?", "A bakery has just finished baking 104 cupcakes for a community event. To make distribution easier, they plan to pack them into boxes, with each box holding 8 cupcakes. How many boxes will they need to store all the cupcakes?", "A grocery store sells fresh green apples in packs of 5. A customer buys 12 packs to share with her friends. If shes shares the apples equally among 6 friends, how many apples does each person get?" ]
var ImageQuestion2: [String] = ["Lemonade", "Books", "Balloons", "Cupcakes", "GreenApple"]
var AnswerQuestion2: [String] = ["52", "84", "12", "13", "10"]

struct StoryTwoPlay: View {
    @State var Opacity = 0.2
    @State private var TimeLeft = 300.0
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    @State var ShowWrong = false
    @State var ShowRight = false
    @State var QuestionCount = 0
    @State var indexArr = 0
    @State var Answer = ""
    @State var Complete = false
    func ButtonPress(number: String) {
        if number == "1" {
            Answer = Answer + "1"
        }
        if number == "2" {
            Answer = Answer + "2"
        }
        if number == "3" {
            Answer = Answer + "3"
        }
        if number == "4" {
            Answer = Answer + "4"
        }
        if number == "5" {
            Answer = Answer + "5"
        }
        if number == "6" {
            Answer = Answer + "6"
        }
        if number == "7" {
            Answer = Answer + "7"
        }
        if number == "8" {
            Answer = Answer + "8"
        }
        if number == "9" {
            Answer = Answer + "9"
        }
        if number == "0" {
            Answer = Answer + "0"
        }
        if number == "ans" {
            if Answer == AnswerQuestion2[indexArr]{
                if QuestionCount < 4 {
                    MusicHelper.MusicPlayer.playCorrectSound()
                    Answer = ""
                    indexArr = indexArr + 1
                    QuestionCount += 1
                    ShowRight = true
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                        ShowRight = false
                    }
                } else {
                    MusicHelper.MusicPlayer.playCorrectSound()
                    Answer = ""
                    QuestionCount += 1
                    ShowRight = true
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                        ShowRight = false
                    }
                }
                
                if QuestionCount == 5{
                    MusicHelper.MusicPlayer.playCorrectSound()
                    Answer = ""
                    LevelIndex.LevelIndex = 3
                    ShowRight = true
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                        ShowRight = false
                    }
                    Complete = true
                    
                }
                
                
                
            } else {
                MusicHelper.MusicPlayer.playWrongSound()
                Answer = ""
                ShowWrong = true
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                    ShowWrong = false
                }
            }
            
        }
        if number == "del" {
            Answer = ""
        }
        
    }
    
    
    var body: some View {
        
        ZStack {
            Image("KingdomGrounds")
                .resizable()
                .scaledToFill()
            
            VStack{
                HStack {
                    ProgressView("Timer", value: TimeLeft, total: 300)
                        .onReceive(timer) { _ in
                            if TimeLeft > 0 {
                                TimeLeft -= 1
                            }
                        }
                        .offset(y:-100)
                        .frame(width:600)
                    Text("\(Int(TimeLeft))")
                        .offset(y:-100)
                }
                
                Text("\(TextQuestion2[indexArr])")
                    .offset(y:-50)
                    .fixedSize(horizontal: false, vertical: true)
                    .frame(width: 600)
                Image("\(ImageQuestion2[indexArr])")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .offset(y:-5)
                ZStack {
                    RoundedRectangle(cornerRadius: 25)
                        .frame(width: 300, height: 50)
                    Text("\(Answer)")
                        .foregroundStyle(.black)
                }
                .offset(y:40)
                HStack{
                    Button(action: {
                        MusicHelper.MusicPlayer.playClickSound()
                        ButtonPress(number: "7")
                    }, label: {
                        ZStack {
                            Image("Button7")
                                .resizable()
                                .frame(width: 100, height: 100)
                                .shadow(radius: 5)
                            
                        }
                    })
                    Button(action: {
                        MusicHelper.MusicPlayer.playClickSound()
                        ButtonPress(number: "8")
                    }, label: {
                        ZStack {
                            Image("Button8")
                                .resizable()
                                .frame(width: 100, height: 100)
                                .shadow(radius: 5)
                        }
                    })
                    Button(action: {
                        MusicHelper.MusicPlayer.playClickSound()
                        ButtonPress(number: "9")
                    }, label: {
                        ZStack {
                            Image("Button9")
                                .resizable()
                                .frame(width: 100, height: 100)
                                .shadow(radius: 5)
                        }
                    })
                }
                .offset(y:75)
                HStack{
                    Button(action: {
                        MusicHelper.MusicPlayer.playClickSound()
                        ButtonPress(number: "4")
                    }, label: {
                        ZStack {
                            Image("Button4")
                                .resizable()
                                .frame(width: 100, height: 100)
                                .shadow(radius: 5)
                        }
                    })
                    Button(action: {
                        MusicHelper.MusicPlayer.playClickSound()
                        ButtonPress(number: "5")
                    }, label: {
                        ZStack {
                            Image("Button5")
                                .resizable()
                                .frame(width: 100, height: 100)
                                .shadow(radius: 5)
                        }
                    })
                    Button(action: {
                        MusicHelper.MusicPlayer.playClickSound()
                        ButtonPress(number: "6")
                    }, label: {
                        ZStack {
                            Image("Button6")
                                .resizable()
                                .frame(width: 100, height: 100)
                                .shadow(radius: 5)
                        }
                    })
                }
                .offset(y:75)
                HStack{
                    Button(action: {
                        MusicHelper.MusicPlayer.playClickSound()
                        ButtonPress(number: "1")
                    }, label: {
                        ZStack {
                            Image("Button1")
                                .resizable()
                                .frame(width: 100, height: 100)
                                .shadow(radius: 5)
                        }
                    })
                    Button(action: {
                        MusicHelper.MusicPlayer.playClickSound()
                        ButtonPress(number: "2")
                    }, label: {
                        ZStack {
                            Image("Button2")
                                .resizable()
                                .frame(width: 100, height: 100)
                                .shadow(radius: 5)
                        }
                    })
                    Button(action: {
                        MusicHelper.MusicPlayer.playClickSound()
                        ButtonPress(number: "3")
                    }, label: {
                        ZStack {
                            Image("Button3")
                                .resizable()
                                .frame(width: 100, height: 100)
                                .shadow(radius: 5)
                        }
                    })
                }
                .offset(y:75)
                HStack {
                    
                    Button(action: {
                        MusicHelper.MusicPlayer.playClickSound()
                        ButtonPress(number: "del")
                    }, label: {
                        ZStack {
                            Image("ButtonDel")
                                .resizable()
                                .frame(width: 100, height: 100)
                                .shadow(radius: 5)
                        }
                    })
                    Button(action: {
                        MusicHelper.MusicPlayer.playClickSound()
                        ButtonPress(number: "0")
                    }, label: {
                        ZStack {
                            Image("Button10")
                                .resizable()
                                .frame(width: 100, height: 100)
                                .shadow(radius: 5)
                        }
                    })
                    Button(action: {
                        MusicHelper.MusicPlayer.playClickSound()
                        ButtonPress(number: "ans")
                    }, label: {
                        ZStack {
                            Image("ButtonEnter")
                                .resizable()
                                .frame(width: 100, height: 100)
                                .shadow(radius: 5)
                        }
                    })
                }
                .offset(y:75)
            }
            if ShowWrong {
                Color.red
                    .opacity(0.5)
                    .edgesIgnoringSafeArea(.all)
            }
            if ShowRight {
                Color.green
                    .opacity(0.5)
                    .edgesIgnoringSafeArea(.all)
            }
            if TimeLeft == 5 {
                Color.red
                    .opacity(Opacity)
                    .onAppear {
                        MusicHelper.MusicPlayer.playWrongSound()
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                            Opacity = 0
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                                Opacity = 0.2
                            }
                        }
                    }
            }
            if TimeLeft == 4 {
                Color.red
                    .opacity(Opacity)
                    .onAppear {
                        MusicHelper.MusicPlayer.playWrongSound()
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                            Opacity = 0
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                                Opacity = 0.2
                            }
                        }
                    }
            }
            if TimeLeft == 3 {
                Color.red
                    .opacity(Opacity)
                    .onAppear {
                        MusicHelper.MusicPlayer.playWrongSound()
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                            Opacity = 0
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                                Opacity = 0.2
                            }
                        }
                    }
            }
            if TimeLeft == 2 {
                Color.red
                    .opacity(Opacity)
                    .onAppear {
                        MusicHelper.MusicPlayer.playWrongSound()
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                            Opacity = 0
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                                Opacity = 0.2
                            }
                        }
                    }
            }
            if TimeLeft == 1 {
                Color.red
                    .opacity(Opacity)
                    .onAppear {
                        MusicHelper.MusicPlayer.playWrongSound()
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                            Opacity = 0
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                                Opacity = 0.2
                            }
                        }
                    }
            }
            if Complete == false && TimeLeft == 0 {
                ZStack {
                    RoundedRectangle(cornerRadius: 25)
                        .frame(width: 265, height: 315)
                        .foregroundStyle(.white)
                    RoundedRectangle(cornerRadius: 25)
                        .frame(width: 250, height: 300)
                        .foregroundStyle(.pink)
                    Image("LevelFailed")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 275, height: 300)
                        .offset(y: -85)
                    VStack {
                        NavigationLink(destination: StoryTwo()) {
                            ZStack {
                                RoundedRectangle(cornerRadius: 10)
                                    .frame(width: 205, height: 55)
                                    .foregroundColor(.white)
                                RoundedRectangle(cornerRadius: 10)
                                    .frame(width: 200, height: 50)
                                    .foregroundColor(.red)
                                Text("TRY AGAIN")
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    .font(.system(size:22))
                                    .foregroundStyle(.white)
                            }
                            .offset(y: 50)
                            
                        }
                        NavigationLink(destination: StoryMode()) {
                            ZStack {
                                RoundedRectangle(cornerRadius: 10)
                                    .frame(width: 205, height: 55)
                                    .foregroundColor(.white)
                                RoundedRectangle(cornerRadius: 10)
                                    .frame(width: 200, height: 50)
                                    .foregroundColor(.blue)
                                Text("STORY MODE")
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    .font(.system(size:22))
                                    .foregroundStyle(.white)
                            }
                            .offset(y: 50)
                        }
                    }
                }
            }
            if Complete == true{
                ZStack {
                    RoundedRectangle(cornerRadius: 25)
                        .frame(width: 265, height: 315)
                        .foregroundStyle(.white)
                    RoundedRectangle(cornerRadius: 25)
                        .frame(width: 250, height: 300)
                        .foregroundStyle(.indigo)
                    Image("LevelComplete")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 250, height: 200)
                        .offset(y: -75)
                    VStack {
                        NavigationLink(destination: StoryThree()) {
                            ZStack {
                                RoundedRectangle(cornerRadius: 10)
                                    .frame(width: 205, height: 55)
                                    .foregroundColor(.white)
                                RoundedRectangle(cornerRadius: 10)
                                    .frame(width: 200, height: 50)
                                    .foregroundColor(.green)
                                Text("NEXT LEVEL")
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    .font(.system(size:22))
                                    .foregroundStyle(.white)
                            }
                            .offset(y: 50)
                            
                        }
                        NavigationLink(destination: StoryMode()) {
                            ZStack {
                                RoundedRectangle(cornerRadius: 10)
                                    .frame(width: 205, height: 55)
                                    .foregroundColor(.white)
                                RoundedRectangle(cornerRadius: 10)
                                    .frame(width: 200, height: 50)
                                    .foregroundColor(.blue)
                                Text("STORY MODE")
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    .font(.system(size:22))
                                    .foregroundStyle(.white)
                            }
                            .offset(y: 50)
                        }
                    }
                }
                
                
            }
            
            
        }
        
    }
    
    
}
#Preview {
    StoryTwoPlay()
}


