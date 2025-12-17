import SwiftUI

struct ContentView: View {
    var body : some View {
        @Environment(\.dismiss) var dismiss
        NavigationStack {
            ZStack {
                Color.green
                    .opacity(0.8)
                    .ignoresSafeArea()
                VStack {
                    Spacer()
                    Spacer()
                    NavigationLink(destination: imposterView()) {
                        Text("Imposter Game")
                            .font(.system(size: 30, weight: .heavy, design: .rounded))
                            .bold()
                            .foregroundColor(.white)
                            .frame(width: 350, height: 70)
                            .background(
                                RoundedRectangle(cornerRadius: 8)
                                    .fill(.pink)
                                    .shadow(radius: 5)
                            )
                    }
                    .padding()
                    Spacer()
                    NavigationLink(destination: charadeView()) {
                        Text("Charades")
                            .font(.system(size: 30, weight: .heavy, design: .rounded))
                            .bold()
                            .foregroundColor(.white)                        
                            .frame(width: 350, height: 70)
                            .background(
                                RoundedRectangle(cornerRadius: 8)
                                    .fill(.yellow)
                                    .opacity(0.9)
                                    .shadow(radius: 5)
                            )
                    }
                    .padding()
                    Spacer()
                    Spacer()
                }
                
            }
            
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct imposterView : View {
    @State private var numPlayers = 0
    @State private var numberPicker = 3...9
    @State private var numberPickerPicked = 3
    
    var body: some View {
        //NavigationStack{
            ZStack {
                Color.pink
                    .ignoresSafeArea()
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
                    
                
                    NavigationLink(destination: playersView(numberPickerPicked: numberPickerPicked)) {
                        Text("Done")
                            .font(.system(size: 30, weight: .heavy, design: .rounded))
                            .bold()
                            .foregroundColor(.white)
                        
                        .frame(width: 150, height: 60)
                            .background(
                                RoundedRectangle(cornerRadius: 8)
                                    .fill(.green)
                                    .opacity(0.9)
                            )
                            .padding()
                    }
                }
            }
            .navigationBarBackButtonHidden(true)
        }
    }





#Preview {
    ContentView()
}

