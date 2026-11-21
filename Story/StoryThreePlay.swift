import SwiftUI


var TextQuestion3: [String] = ["A city park recorded 175 visitors in the morning and 119 visitors in the afternoon to enjoy the walking trails, playground, and picnic areas. owever, as the sun began to set, 62 visitors left early before the park officially closed. By the end of the day, how many visitors were still at the park?", "An amusement park sells family ticket bundles, with each bundle including 5 tickets. On a busy weekend, they sell 120 bundles in one day. Each ride at the park can accommodate 10 visitors at a time. How many full rides would be needed to give every visitor at least one turn?", "A newly renovated movie theater has an organized seating arrangement. Inside the theater, there are 20 rows of seats, with exactly 15 seats in each row. For a highly anticipated movie showing, 245 people purchase tickets and take their seats. Since not every seat is filled, the theater manager wants to know how many seats remain empty. How many seats are left unoccupied?", "A warehouse receives a massive shipment of products, with exactly 960 new items ready for distribution. To prepare for delivery, workers must pack the products into boxes, ensuring that each box contains exactly 40 items. Once the packing is complete, another 120 products were added as special freebies. How many boxes were used to store the total products?", "A school fundraiser sells tickets for activities, with 6 booths selling 45 tickets each. However, 118 tickets go unused and are subtracted from the total. Each ticket costs $3, and the total money collected is split equally among 4 school departments. Afterward, the library receives an extra $150 donation. How much money does the library receive in total?" ]
var ImageQuestion3: [String] = ["Playground", "AmusementPark", "Theater", "Toys", "TicketBooth"]
var AnswerQuestion3: [String] = ["232", "60", "55", "27", "264"]

struct StoryThreePlay: View {
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
            if Answer == AnswerQuestion3[indexArr]{
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
                    LevelIndex.LevelIndex = 4
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
                
                Text("\(TextQuestion3[indexArr])")
                    .offset(y:-50)
                    .fixedSize(horizontal: false, vertical: true)
                    .frame(width: 600)
                Image("\(ImageQuestion3[indexArr])")
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
                        NavigationLink(destination: StoryThree()) {
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
                        NavigationLink(destination: StoryEnd()) {
                            ZStack {
                                RoundedRectangle(cornerRadius: 10)
                                    .frame(width: 205, height: 55)
                                    .foregroundColor(.white)
                                RoundedRectangle(cornerRadius: 10)
                                    .frame(width: 200, height: 50)
                                    .foregroundColor(.green)
                                Text("READ ENDING")
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
    StoryThreePlay()
}




