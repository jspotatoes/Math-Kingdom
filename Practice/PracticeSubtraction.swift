import SwiftUI
import AVFoundation

struct PracticeSubtraction: View {
    @State var ShowWrong = false
    @State var ShowRight = false
    @State var num1 = Int.random(in: 50...90)
    @State var num2 = Int.random(in: 1...45)
    @State var Answer = ""
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
            if Answer == String(num1 - num2){
                MusicHelper.MusicPlayer.playCorrectSound()
                Answer = ""
                num1 = Int.random(in: 50...90)
                num2 = Int.random(in: 1...45)
                ShowRight = true
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                    ShowRight = false
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
            Image("PracticeRoom")
                .resizable()
                .scaledToFill()
            NavigationLink(destination: PracticeMode()) {
                ZStack {
                    Circle()
                        .frame(height: 55)
                        .foregroundStyle(.white)
                    Circle()
                        .frame(height: 50)
                        .foregroundStyle(.pink)
                    Image(systemName: "arrowshape.left.fill")
                        .foregroundStyle(.white)
                }
            }
            .frame(
                maxWidth: .infinity, maxHeight: .infinity,
                alignment: Alignment.topLeading)
            .padding()
            VStack{
                Text("\(num1) - \(num2)")
                    .font(.system(size: 22))
                ZStack {
                    RoundedRectangle(cornerRadius: 25)
                        .frame(width: 300, height: 50)
                    Text("\(Answer)")
                        .foregroundStyle(.black)
                }
                .padding()
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
        }
        
    }
    
    
}

#Preview {
    PracticeSubtraction()
}


