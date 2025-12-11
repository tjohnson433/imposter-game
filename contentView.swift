import SwiftUI

struct ContentView: View {
    @State private var numPlayers = 0
    @State private var numberPicker = 3...10
    @State private var numberPickerPicked = 3
    
    var body: some View {
        NavigationStack{
            ZStack {
                BackgroundView()
                VStack {
                    Text("Number of players")
                        .font(.title2)
                        .bold()
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                    
                    Picker("Choose a number", selection: $numberPickerPicked) {
                        ForEach(numberPicker, id: \.self) { numberPicker in
                            Text("\(numberPicker)")
                                .tag(numberPicker)
                        }
                        .foregroundColor(.white)
                    }
                    .pickerStyle(.wheel)
                    
                
                    NavigationLink(destination: playersView()) {
                        Text("Done")
                            .font(.system(size: 30, weight: .heavy, design: .rounded))
                            .bold()
                            .foregroundColor(.white)
                            .background(
                                RoundedRectangle(cornerRadius: 8)
                                    .fill(.green)
                                    .opacity(0.9)
                                    .frame(width: 150, height: 60)
                            )
                            .padding()
                    }
                }
            }
            .navigationBarBackButtonHidden(true)
        }
    }
}

struct BackgroundView: View {
    var body: some View {
        Color.pink
            .ignoresSafeArea()
    }
}



#Preview {
    ContentView()
}

