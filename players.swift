import SwiftUI

struct playersView : View {
    
    let wordPair = getRandomPair()
    
    @State private var imposter = 1
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            player1View(wordPair: wordPair, amITheImposter: imposter == 1, imposterNumber: imposter)
            
           
        }
        .onAppear {
            imposter = [1, 2, 3].randomElement()!
        }
    }
}


struct player1View: View {
    @Environment(\.dismiss) var dismiss
    @State private var isImposterRevealed = false
    
    let wordPair: WordAndHint
    let amITheImposter: Bool
    let imposterNumber: Int  // imposter is now imposterNumber
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.blue
                    .ignoresSafeArea()
                    .opacity(0.7)
                
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
                        
                        Text("Player 1")
                            .font(.system(size: 30, weight: .heavy, design: .rounded))
                            .foregroundColor(.white)
                        
                        NavigationLink(destination: player2View(wordPair: wordPair, amITheImposter: imposterNumber == 2, imposterNumber: imposterNumber)) {
                            Spacer()
                            Image(systemName: "chevron.right")
                                .font(.system(size: 15, weight: .heavy, design: .rounded))
                                .padding()
                        }
                        .foregroundColor(.white)
                    }
                    Spacer()
                }
                Button(action: {
                    isImposterRevealed.toggle()
                }) {
                    Text(isImposterRevealed ? amITheImposter ? "You're the imposter...\nThe hint is \(wordPair.hint) " : "You're a potato...\nThe word is \(wordPair.word) ": "Tap to reveal")
                        .font(.system(size: 20, weight: .heavy, design: .rounded))
                        .foregroundColor(.white)
                }
            }
            .navigationBarBackButtonHidden(true)
        }
    }
}


struct player2View : View {
    @Environment(\.dismiss) var dismiss
    @State private var isImposterRevealed = false
    
    let wordPair: WordAndHint
    let amITheImposter: Bool
    let imposterNumber: Int
    
    var body : some View {
        NavigationStack {
            ZStack {
                Color.orange
                    .ignoresSafeArea()
                    .opacity(0.7)
                
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
                        
                        Text("Player 2")
                            .font(.system(size: 30, weight: .heavy, design: .rounded))
                            .foregroundColor(.white)
                        
                        NavigationLink(destination: player3View(wordPair: wordPair, amITheImposter: imposterNumber == 3, imposterNumber: imposterNumber)) {
                            Spacer()
                            Image(systemName: "chevron.right")
                                .font(.system(size: 15, weight: .heavy, design: .rounded))
                                .padding()
                        }
                        .foregroundColor(.white)
                    }
                    Spacer()
                }
                Button(action: {
                    isImposterRevealed.toggle()
                }) {
                    Text(isImposterRevealed ? amITheImposter ? "You're the imposter...\nThe hint is \(wordPair.hint) " : "You're a potato...\nThe word is \(wordPair.word) ": "Tap to reveal")
                        .font(.system(size: 20, weight: .heavy, design: .rounded))
                        .foregroundColor(.white)
                }
            }
            .navigationBarBackButtonHidden(true)
        }
    }
}

struct player3View : View {
    @Environment(\.dismiss) var dismiss
    @State private var isImposterRevealed = false
    
    let wordPair: WordAndHint
    let amITheImposter: Bool
    let imposterNumber: Int
    
    var body : some View {
        NavigationStack {
            ZStack {
                Color.green
                    .ignoresSafeArea()
                    .opacity(0.7)
                
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
                        
                        Text("Player 3")
                            .font(.system(size: 30, weight: .heavy, design: .rounded))
                            .foregroundColor(.white)
                        
                        NavigationLink(destination: ContentView()) {
                            Spacer()
                            Image(systemName: "chevron.right")
                                .font(.system(size: 15, weight: .heavy, design: .rounded))
                                .padding()
                        }
                        .foregroundColor(.white)
                    }
                    Spacer()
                }
                Button(action: {
                    isImposterRevealed.toggle()
                }) {
                    Text(isImposterRevealed ? amITheImposter ? "You're the imposter...\nThe hint is \(wordPair.hint) " : "You're a potato...\nThe word is \(wordPair.word) ": "Tap to reveal")
                        .font(.system(size: 20, weight: .heavy, design: .rounded))
                        .foregroundColor(.white)
                }
            }
            .navigationBarBackButtonHidden(true)
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
        NavigationStack {
            ZStack {
                Color.blue
                    .ignoresSafeArea()
                    .opacity(0.7)
                
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
                        
                        Text("Player 1")
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
                    Text(isImposterRevealed ? amITheImposter ? "You're the imposter...\nThe hint is \(wordPair.hint) " : "You're a potato...\nThe word is \(wordPair.word) ": "Tap to reveal")
                        .font(.system(size: 20, weight: .heavy, design: .rounded))
                        .foregroundColor(.white)
                }
            }
            .navigationBarBackButtonHidden(true)
        }
    }
}

#Preview {
    playersView()
}

