import SwiftUI

struct Credits: View {
    var body: some View {
        ZStack {
            Image("MainBG")
                .resizable()
                .scaledToFill()
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 400, height: 700)
                .foregroundColor(.white)
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 390, height: 690)
                .foregroundColor(.brown)
            VStack {
                Text("Credits")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .font(.system(size: 30))
                Text("")
                VStack(alignment: .leading) {
                    Text("Background Music:")
                        .font(.system(size: 20))
                        .multilineTextAlignment(.leading)
                    Text("1. Village Fete by PeriTune")
                    Text("https://www.chosic.com/download-audio/58937/")
                    Text("")
                    Text("2. Adventure theme #9 by BloodPixelHero")
                    Text("https://freesound.org/s/696408/")
                    Text("")
                    Text("3. Castle Music Loop #1 by Sirkoto51")
                    Text("https://freesound.org/s/416632/")
                    Text("")
                    Text("4. Menu music by wi-photos")
                    Text("https://freesound.org/s/489554/")
                    Text("")
                    Text("")
                    Text("Sound Effects:")
                        .font(.system(size: 20))
                    Text("1. Click")
                    Text("https://mixkit.co/free-sound-effects/click/")
                    Text("")
                    Text("2. Correct")
                    Text("https://mixkit.co/free-sound-effects/correct/")
                    Text("")
                    Text("3. Error.wav by Autistic Lucario")
                    Text("https://freesound.org/s/142608/")
                    Text("")
                    Text("")
                    Text("Assets:")
                        .font(.system(size: 20))
                    Text("1. Designed by Canva")
                    Text("https://www.canva.com")
                    Text("")
                    Text("2. Designed by Freepik")
                    Text("https://www.freepik.com")
                    Text("")
                }
            }
            
        }
    }
    
}

#Preview {
    Credits()
}
