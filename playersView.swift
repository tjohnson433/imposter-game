import SwiftUI

struct playersView : View {
    
    let numberPickerPicked: Int
    let wordPair = getRandomPair()
    
    @State private var imposter = 1
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            PlayerView(
                totalPlayers: numberPickerPicked,
                amITheImposter: imposter == 1,
                imposterNumber: imposter,
                playerNumber: 1,
                wordPair: wordPair
            )
        }
        .onAppear {
            imposter = Array(1...numberPickerPicked).randomElement()!
        }
    }
}


struct PlayerView : View {
    @Environment(\.dismiss) var dismiss
    @State private var isImposterRevealed = false
    
    let totalPlayers: Int
    let amITheImposter: Bool
    let imposterNumber: Int
    let playerNumber: Int
    let wordPair: WordAndHint
    
    var body : some View {
       // NavigationStack {
            ZStack {
                if playerNumber == 1 {
                    Color.blue
                        .opacity(0.7)
                        .ignoresSafeArea()
                } else if playerNumber == 2 {
                    Color.orange
                        .opacity(0.7)
                        .ignoresSafeArea()
                } else if playerNumber == 3 {
                    Color.green
                        .opacity(0.7)
                        .ignoresSafeArea()
                } else if playerNumber == 4 {
                    Color.red
                        .opacity(0.7)
                        .ignoresSafeArea()
                } else if playerNumber == 5 {
                    Color.yellow
                        .opacity(0.7)
                        .ignoresSafeArea()
                } else if playerNumber == 6 {
                    Color.purple
                        .opacity(0.7)
                        .ignoresSafeArea()
                } else if playerNumber == 7 {
                    Color.cyan
                        .opacity(0.7)
                        .ignoresSafeArea()
                } else if playerNumber == 8 {
                    Color.indigo
                        .opacity(0.7)
                        .ignoresSafeArea()
                } else if playerNumber == 9 {
                    Color.mint
                        .opacity(0.7)
                        .ignoresSafeArea()
                }
                
                VStack {
                    HStack {
                        Button(action: {
                                dismiss()
                            }) {
                                Image(systemName: "chevron.left")
                                    .font(.system(size: 15, weight: .heavy, design: .rounded))
                                    .padding()
                                Spacer()
                                }
                        .foregroundColor(.white)
                        
                        Text("Player \(playerNumber)")
                            .font(.system(size: 30, weight: .heavy, design: .rounded))
                            .foregroundColor(.white)
                        
                        if playerNumber == totalPlayers {
                            NavigationLink(destination: ContentView()) {
                                Spacer()
                                Image(systemName: "chevron.right")
                                    .font(.system(size: 15, weight: .heavy, design: .rounded))
                                    .padding()
                            }
                            .foregroundColor(.white)
                        } else {
                            NavigationLink(destination: PlayerView(
                                
                                totalPlayers: totalPlayers,
                                amITheImposter: imposterNumber == playerNumber + 1,
                                imposterNumber: imposterNumber,
                                playerNumber: playerNumber + 1,
                                wordPair: wordPair,
                                
                            )) {
                                Spacer()
                                Image(systemName: "chevron.right")
                                    .font(.system(size: 15, weight: .heavy, design: .rounded))
                                    .padding()
                            }
                            .foregroundColor(.white)
                        }
                    }
                    Spacer()
                }
                Button(action: {
                    isImposterRevealed.toggle()
                }) {
                    Text(isImposterRevealed ? amITheImposter ? "You're the imposter...\nThe hint is \(wordPair.hint) " : "You're an investigator...\nThe word is \(wordPair.word) ": "Tap to reveal")
                        .font(.system(size: 20, weight: .heavy, design: .rounded))
                        .foregroundColor(.white)
                }
            }
            .navigationBarBackButtonHidden(true)
        }
    }


#Preview {
    playersView(numberPickerPicked: 3)
}

