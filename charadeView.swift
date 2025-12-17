//
//  charadeView.swift
//  ImposterGame
//
//  Created by Thomas Johnson on 17/12/2025.
//

import SwiftUI

struct charadeView : View {
    
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.yellow)
                    .ignoresSafeArea()
                VStack {
                    Text("Categories")
                        .font(.system(size: 30, weight: .heavy, design: .rounded))
                        .bold()
                        .foregroundColor(.white)
                    Spacer()
                    Spacer()
                    NavigationLink(destination: movieCategory()) {
                        Text("Movies")
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
                    //.padding()
                    Spacer()
                    
                    NavigationLink(destination: booksCategory()) {
                        Text("Books")
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
                   // .padding()
                    Spacer()
                    
                    NavigationLink(destination: animalCategory()) {
                        Text("Animals")
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
                    //.padding()
                    Spacer()
                    
                    NavigationLink(destination: peopleCategory()) {
                        Text("People")
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
                    //.padding()
                    Spacer()
                    
                    NavigationLink(destination: mixedCategory()) {
                        Text("Mixed")
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
                    //.padding()
                    Spacer()
                    Spacer()
                    
                }
            }
        }
    }
}

struct movieCategory : View {
    
    @State private var word = getRandomMovieWord()
    
    var body: some View {
        ZStack {
            Color.gray
                .opacity(0.7)
                .ignoresSafeArea()
            VStack {
                Text("MOVIES")
                    .font(.system(size: 30, weight: .heavy, design: .rounded))
                    .bold()
                Spacer()
                
                Text("Movie")
                    .font(.system(size: 23, weight: .heavy, design: .rounded))
                    .bold()
                    .padding()
                Text("The movie is:")
                    .font(.system(size: 23, weight: .heavy, design: .rounded))
                    .bold()
                Text(word.text)
                    .font(.system(size: 23, weight: .heavy, design: .rounded))
                    .bold()
                Spacer()
                
                    .onAppear {
                        word = getRandomMovieWord()
                    }
            }
        }
    }
}

struct booksCategory : View {
    @State private var word = getRandomBookWord()
    
    var body: some View {
        ZStack {
            Color.green
                .opacity(0.7)
                .ignoresSafeArea()
            VStack {
                Text("BOOKS")
                    .font(.system(size: 30, weight: .heavy, design: .rounded))
                    .bold()
                Spacer()
                
                Text("Book")
                    .font(.system(size: 23, weight: .heavy, design: .rounded))
                    .bold()
                    .padding()
                Text("The book is:")
                    .font(.system(size: 23, weight: .heavy, design: .rounded))
                    .bold()
                Text(word.text)
                    .font(.system(size: 23, weight: .heavy, design: .rounded))
                    .bold()
                Spacer()
                
                    .onAppear {
                        word = getRandomBookWord()
                    }
            }
        }
    }
}

struct animalCategory : View {
    
    @State private var word = getRandomAnimalWord()
    
    var body: some View {
        ZStack {
            Color.red
                .opacity(0.7)
                .ignoresSafeArea()
            VStack {
                Text("ANIMALS")
                    .font(.system(size: 30, weight: .heavy, design: .rounded))
                    .bold()
                Spacer()
                
                Text("Animal")
                    .font(.system(size: 23, weight: .heavy, design: .rounded))
                    .bold()
                    .padding()
                Text("The animal is:")
                    .font(.system(size: 23, weight: .heavy, design: .rounded))
                    .bold()
                Text(word.text)
                    .font(.system(size: 23, weight: .heavy, design: .rounded))
                    .bold()
                Spacer()
                
                    .onAppear {
                        word = getRandomAnimalWord()
                    }
            }
        }
    }
}

struct peopleCategory : View {
    @State private var word = getRandomPeopleWord()
    
    var body: some View {
        ZStack {
            Color.blue
                .opacity(0.7)
                .ignoresSafeArea()
            VStack {
                Text("PEOPLE")
                    .font(.system(size: 30, weight: .heavy, design: .rounded))
                    .bold()
                Spacer()
                
                Text("Person")
                    .font(.system(size: 23, weight: .heavy, design: .rounded))
                    .bold()
                    .padding()
                Text("The word is:")
                    .font(.system(size: 23, weight: .heavy, design: .rounded))
                    .bold()
                Text(word.text)
                    .font(.system(size: 23, weight: .heavy, design: .rounded))
                    .bold()
                Spacer()
                
                    .onAppear {
                        word = getRandomPeopleWord()
                    }
            }
        }
        
    }
}

struct mixedCategory : View {
    @State private var word = getRandomMixedWord()
    
    var body: some View {
        ZStack {
            Color.white
                .opacity(0.7)
                .ignoresSafeArea()
            VStack {
                Text("MIXED")
                    .font(.system(size: 30, weight: .heavy, design: .rounded))
                    .bold()
                Spacer()
            
                Text("The word is:")
                    .font(.system(size: 23, weight: .heavy, design: .rounded))
                    .bold()
                Text(word.text)
                    .font(.system(size: 23, weight: .heavy, design: .rounded))
                    .bold()
                Spacer()
                
                    .onAppear {
                        word = getRandomMixedWord()
                    }
            }
        }
    }
}


#Preview {
    charadeView()
}
