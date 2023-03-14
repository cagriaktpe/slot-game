//
//  ContentView.swift
//  slot-game
//
//  Created by Samet Cagri Aktepe on 14/03/2023.
//

import SwiftUI

struct ContentView: View {
    // variables
    @State var credits = 1000
    @State var image1 = "apple"
    @State var image2 = "cherry"
    @State var image3 = "star"
    let fruits = ["apple", "cherry", "star"]
        
    var body: some View {
        
        VStack {
            Text("SwiftUI Slots!")
                .font(.largeTitle)

            Spacer()
            
            Text("Credits: " + String(credits))
                .font(.title2)
            
            Spacer()
            
            HStack {
                Image(image1)
                    .resizable()
                    .scaledToFit()
                Image(image2)
                    .resizable()
                    .scaledToFit()
                Image(image3)
                    .resizable()
                    .scaledToFit()
            }
            .padding()
            
            Spacer()
            
            Button {
                changeImages()
                
                if image1 == image2 && image1 == image3 {
                    credits += 15
                } else {
                    credits -= 5
                }
            } label: {
                Text("Spin")
                    .padding(.horizontal)
            }
            .buttonStyle(.bordered)
            .background(.pink)
            .cornerRadius(25)
            .font(.largeTitle)
            .foregroundColor(.white)
            
            Spacer()

        }
        .padding()
    }
    
    // methods
    func changeImages() {
        let random1 = Int.random(in: 0...2)
        let random2 = Int.random(in: 0...2)
        let random3 = Int.random(in: 0...2)
        
        image1 = fruits[random1]
        image2 = fruits[random2]
        image3 = fruits[random3]
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
