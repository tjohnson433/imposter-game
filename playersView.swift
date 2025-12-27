import SwiftUI

struct playersView : View {
    
    let numberPickerPicked: Int
    
    @State private var imposter = 1
    @Environment(\.dismiss) var dismiss
    
    @Binding var shuffledDeck: [WordAndHint]
    @Binding var currentIndex: Int
    
    var wordPair: WordAndHint {
        shuffledDeck[currentIndex]
    }
    
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
                    LinearGradient(
                        colors: [.blue, .teal],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                    .ignoresSafeArea()
                    
                } else if playerNumber == 2 {
                    LinearGradient(
                        colors: [.orange, .yellow],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                    .ignoresSafeArea()
                    
                } else if playerNumber == 3 {
                    LinearGradient(
                        colors: [.green, .yellow],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                    .ignoresSafeArea()
                } else if playerNumber == 4 {
                    LinearGradient(
                        colors: [.red, .orange.opacity(0.8)],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                    .ignoresSafeArea()
                } else if playerNumber == 5 {
                    LinearGradient(
                        colors: [.yellow, .pink],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                    .ignoresSafeArea()
                } else if playerNumber == 6 {
                    LinearGradient(
                        colors: [.purple, .pink],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                    .ignoresSafeArea()
                } else if playerNumber == 7 {
                    LinearGradient(
                        colors: [.cyan, .green],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                    .ignoresSafeArea()
                } else if playerNumber == 8 {
                    LinearGradient(
                        colors: [.indigo, .purple],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                    .ignoresSafeArea()
                } else if playerNumber == 9 {
                    LinearGradient(
                        colors: [.mint, .blue],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                    .ignoresSafeArea()
                } else if playerNumber == 10 {
                    LinearGradient(
                        colors: [.yellow, .purple],
                        startPoint: .top,
                        endPoint: .bottom
                    )
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
                                    .background {
                                        RoundedRectangle(cornerRadius: 20, style: .continuous)
                                            .fill(.ultraThinMaterial)
                                            .overlay {
                                                RoundedRectangle(cornerRadius: 20, style: .continuous)
                                                    .fill (
                                                        LinearGradient(
                                                            colors: [
                                                                .white.opacity(0.35),
                                                                .white.opacity(0.1),
                                                                .clear
                                                            ],
                                                            startPoint: .topLeading,
                                                            endPoint: .bottomTrailing
                                                            
                                                        )
                                                    )
                                            }
                                    }
                                    .overlay {
                                        RoundedRectangle(cornerRadius: 20)
                                            .strokeBorder(
                                                LinearGradient(
                                                    colors: [.white.opacity(0.6), .white.opacity(0.2)],
                                                    startPoint: .topLeading,
                                                    endPoint: .bottomTrailing
                                                ),
                                                lineWidth: 1.5
                                            )
                                    }
                                    .shadow(color: .black.opacity(0.15), radius: 10, y: 4)
                                Spacer().frame(width: 87)
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
                                    .background {
                                        RoundedRectangle(cornerRadius: 20, style: .continuous)
                                            .fill(.ultraThinMaterial)
                                            .overlay {
                                                RoundedRectangle(cornerRadius: 20, style: .continuous)
                                                    .fill (
                                                        LinearGradient(
                                                            colors: [
                                                                .white.opacity(0.35),
                                                                .white.opacity(0.1),
                                                                .clear
                                                            ],
                                                            startPoint: .topLeading,
                                                            endPoint: .bottomTrailing
                                                            
                                                        )
                                                    )
                                            }
                                    }
                                    .overlay {
                                        RoundedRectangle(cornerRadius: 20)
                                            .strokeBorder(
                                                LinearGradient(
                                                    colors: [.white.opacity(0.6), .white.opacity(0.2)],
                                                    startPoint: .topLeading,
                                                    endPoint: .bottomTrailing
                                                ),
                                                lineWidth: 1.5
                                            )
                                    }
                                    .shadow(color: .black.opacity(0.15), radius: 10, y: 4)
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
                                Spacer().frame(width: 87)
                                Image(systemName: "chevron.right")
                                    .font(.system(size: 15, weight: .heavy, design: .rounded))
                                    .padding()
                                    .background {
                                        RoundedRectangle(cornerRadius: 20, style: .continuous)
                                            .fill(.ultraThinMaterial)
                                            .overlay {
                                                RoundedRectangle(cornerRadius: 20, style: .continuous)
                                                    .fill (
                                                        LinearGradient(
                                                            colors: [
                                                                .white.opacity(0.35),
                                                                .white.opacity(0.1),
                                                                .clear
                                                            ],
                                                            startPoint: .topLeading,
                                                            endPoint: .bottomTrailing
                                                            
                                                        )
                                                    )
                                            }
                                    }
                                    .overlay {
                                        RoundedRectangle(cornerRadius: 20)
                                            .strokeBorder(
                                                LinearGradient(
                                                    colors: [.white.opacity(0.6), .white.opacity(0.2)],
                                                    startPoint: .topLeading,
                                                    endPoint: .bottomTrailing
                                                ),
                                                lineWidth: 1.5
                                            )
                                    }
                                    .shadow(color: .black.opacity(0.15), radius: 10, y: 4)
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
                            .font(.system(size: 21, weight: .heavy, design: .rounded))
                            .bold()
                            .foregroundStyle(.white)
                            .padding(.vertical, 18)
                            .padding(.horizontal, 40)
                            .background {
                                RoundedRectangle(cornerRadius: 20, style: .continuous)
                                    .fill(.ultraThinMaterial)
                                    .overlay {
                                        RoundedRectangle(cornerRadius: 20, style: .continuous)
                                            .fill (
                                                LinearGradient(
                                                    colors: [
                                                        .white.opacity(0.35),
                                                        .white.opacity(0.1),
                                                        .clear
                                                    ],
                                                    startPoint: .topLeading,
                                                    endPoint: .bottomTrailing
                                                    
                                                )
                                            )
                                    }
                            }
                            .overlay {
                                RoundedRectangle(cornerRadius: 20)
                                    .strokeBorder(
                                        LinearGradient(
                                            colors: [.white.opacity(0.6), .white.opacity(0.2)],
                                            startPoint: .topLeading,
                                            endPoint: .bottomTrailing
                                        ),
                                        lineWidth: 1.5
                                    )
                            }
                            .shadow(color: .black.opacity(0.15), radius: 10, y: 4)
                }
            }
            .navigationBarBackButtonHidden(true)
        }
    }


#Preview {
    @Previewable @State var previewDeck: [WordAndHint] = allWordPairs.shuffled()
    @Previewable @State var previewIndex: Int = 0

    playersView(
        numberPickerPicked: 4,
        shuffledDeck: $previewDeck,
        currentIndex: $previewIndex
    )
}


