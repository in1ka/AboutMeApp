//
//  ContentView.swift
//  AboutMeApp
//
//  Created by Inika Bhargava on 4/19/25.
//

import SwiftUI

struct ContentView: View {
    @State private var showText = false
    var body: some View {
    
        VStack {
            Text("Hello, Everyone!")
                .fontWeight(.bold)
                .font(.title)
            Text("I'm Inika and I'm so excited to be here!")
                .font(.headline)
                
            Image("knivesout")
                .resizable()
                .frame(width: 250, height: 350)
                .shadow(radius: 5)
            Text("I love rewatching both the Knives Out movies and murder mysteries in general")
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .frame(maxWidth: .infinity, alignment: .center)
            
           
            //Used stackoverflow + previous knowledge of Swift to code the button so that the "About me" info shows up when the button is clicked.
            Button("About Me") {
                showText = true
            }
                .font(.title2)
                .padding()
                .background(Color.black)
                .foregroundColor(.white)
                .cornerRadius(10)

            if showText {
                Text("I'm a first year student at UCSC, majoring in CE and I've been doing KWK for 4 summers. I like swimming and going on hikes when I'm free :)")
                    .font(.body)
                    .padding()
                    .multilineTextAlignment(.center)
            }
            
        }
        
        .padding()
    }
}

#Preview {
    ContentView()
}
