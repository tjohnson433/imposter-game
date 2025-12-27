//
//  ContentView.swift
//  ImposterGame
//
//  Created by Thomas Johnson on 06/09/2025.
//

import SwiftUI

struct ContentView: View {
    
    @State private var currentIndex = 0
    @State private var shuffledDeck: [WordAndHint] = []
    @Environment(\.dismiss) var dismiss
    
    var body : some View {
        NavigationStack {
            ZStack {
                LinearGradient(
                    colors: [ Color(red: 0.4, green: 0.6, blue: 1.0),
                             Color(red: 0.8, green: 0.5, blue: 1.0),
                             Color(red: 1.0, green: 0.8, blue: 0.4)],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .ignoresSafeArea()
                VStack(spacing: 18) {
                    HStack(spacing: 12) {
                        Spacer()
                        Image(systemName: "gear")
                            .padding(.trailing)
                            .font(.system(size: 20, weight: .medium))
                            .padding()
                            .foregroundColor(.white)
                            .frame(width: 44, height: 44)
                            .padding(.leading)
                            .background {
                                Circle()
                                .fill(.ultraThinMaterial)
                                
                            }
                        
                    }
                    
                    
                    Spacer()
                    Text("Party Games")
                        .font(.system(size: 52, weight: .black, design: .rounded))
                        .foregroundStyle(.white)
                        .shadow(color: .white, radius: 20)
                        .shadow(color: .black.opacity(0.3), radius: 2, x: 2, y: 2)
                    Spacer()
                    
                    
                    NavigationLink(destination: imposterView(shuffledDeck: $shuffledDeck, currentIndex: $currentIndex)) {
                        HStack(spacing: 20) {
                            Image(systemName: "theatermasks.fill")
                                .font(.system(size: 26, weight: .semibold))
                            Text("Imposter Game")
                                .font(.system(size: 26, weight: .bold, design: .rounded))
                        }
                        .frame(maxWidth: .infinity)
                        .frame(maxHeight: 70)
                        .foregroundStyle(.white)
                        .background {
                            RoundedRectangle(cornerRadius: 20, style: .continuous)
                                .fill(.ultraThinMaterial)
                                .overlay {
                                    RoundedRectangle(cornerRadius: 20, style: .continuous)
                                        .fill(
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
                                .shadow(color: .black.opacity(0.2), radius: 10, y: 6)
                                .shadow(color: .white.opacity(0.3), radius: 1, y: -1)
                        }
                        .overlay {
                            RoundedRectangle(cornerRadius: 22, style: .continuous)
                                .strokeBorder(.white.opacity(0.4), lineWidth: 1)
                        }
                    }
                    .padding()
                
                        NavigationLink(destination: charadeView()) {
                            
                            HStack(spacing: 20) {
                                Image(systemName: "hands.clap.fill")
                                    .font(.system(size: 26, weight: .bold))
                                Text("Charades")
                                    .font(.system(size: 26, weight: .bold, design: .rounded))
                            }
                            .frame(maxWidth: .infinity)
                            .frame(maxHeight: 70)
                            .foregroundStyle(.white)
                            .background {
                                RoundedRectangle(cornerRadius: 22, style: .continuous)
                                    .fill(.ultraThinMaterial)
                                    .overlay {
                                        RoundedRectangle(cornerRadius: 22, style: .continuous)
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
                                    .shadow(color: .black.opacity(0.2), radius: 10, y: 6)
                                    .shadow(color: .white.opacity(0.3), radius: 1, y: -1)
                            }
                            .overlay {
                                RoundedRectangle(cornerRadius: 22, style: .continuous)
                                    .strokeBorder(.white.opacity(0.3), lineWidth: 1)
                            }
                    }
                        .padding()
                        Spacer()
                        Spacer()
                }
            }
            
        }
        .onAppear {
            if shuffledDeck.isEmpty {
                shuffledDeck = allWordPairs.shuffled()
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct imposterView : View {
    @State private var numPlayers = 0
    @State private var numberPicker = 3...10
    @State private var numberPickerPicked = 3
    
    @Binding var shuffledDeck: [WordAndHint]
    @Binding var currentIndex: Int
    
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [
                    Color(red: 1.0, green: 0.3, blue: 0.5),
                    Color(red: 1.0, green: 0.6, blue: 0.3),
                    Color(red: 1.0, green: 0.8, blue: 0.4)
                ],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
            
            VStack {
                Spacer()
                
                Text("Select Players")
                    .font(.system(size: 44, weight: .black, design: .rounded))
                    .foregroundStyle(.white)
                    .shadow(color: .white, radius: 20)
                    .shadow(color: .black.opacity(0.3), radius: 2, x: 2, y: 2)
                Spacer()
                
                VStack(spacing: 16) {
                    
                    Text("How many players?")
                        .font(.system(size: 18, weight: .semibold, design: .rounded))
                        .foregroundStyle(.white.opacity(0.9))
                    
                    Picker("How many players?", selection: $numberPickerPicked) {
                        ForEach(numberPicker, id: \.self) { numberPicker in
                            Text("\(numberPicker)")
                                .tag(numberPicker)
                        }
                        .font(.system(size: 26, weight: .bold, design: .rounded))
                        .foregroundColor(.white)
                    }
                }
                .padding()
                .pickerStyle(.wheel)
                .frame(width: 360, height: 240)
                .background {
                    RoundedRectangle(cornerRadius: 20, style: .continuous)
                        .fill(.ultraThinMaterial)
                        .overlay{
                            RoundedRectangle(cornerRadius: 22, style: .continuous)
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
                        .shadow(color: .black.opacity(0.2), radius: 10, y: 6)
                        .shadow(color: .white.opacity(0.3), radius: 1, y: -1)
                }
                .overlay {
                    RoundedRectangle(cornerRadius: 22, style: .continuous)
                        .strokeBorder(
                            LinearGradient(
                                colors: [.white.opacity(0.6), .white.opacity(0.2)],
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing
                            ),
                            lineWidth: 1.5
                        )
                    
                }
                
                
                Spacer()
                Spacer()
                
                HStack {
                    Button(action: {
                        shuffledDeck = allWordPairs.shuffled()
                        currentIndex = 0
                    }) {
                        HStack {
                            Image(systemName: "shuffle")
                                .font(.system(size: 20, weight: .heavy, design: .rounded))
                            
                            Text("Shuffle ")
                                .font(.system(size: 26, weight: .heavy, design: .rounded))
                        }
                        .foregroundStyle(.white)
                    }
                    .frame(width: 170, height: 60)
                    .background(
                        RoundedRectangle(cornerRadius: 8)
                            .fill(.green)
                            .opacity(0.9)
                            .shadow(radius: 20)
                    )
                    .padding()
                    
                    NavigationLink(destination: playersView(numberPickerPicked: numberPickerPicked, shuffledDeck: $shuffledDeck, currentIndex: $currentIndex)) {
                        HStack {
                            Text("Continue")
                                .font(.system(size: 26, weight: .heavy, design: .rounded))
                                .bold()
                                .foregroundColor(.pink)
                            Image(systemName: "arrow.right")
                                .font(.system(size: 20, weight: .heavy, design: .rounded))
                                .bold()
                                .foregroundColor(.pink)
                        }
                        .frame(width: 175, height: 60)
                        .background(
                            RoundedRectangle(cornerRadius: 8)
                                .fill(.white)
                                .opacity(0.9)
                                .shadow(radius: 20)
                        )
                        .padding()
                    }
                }
            }
        }
        
    }
}





#Preview {
    ContentView()
}


