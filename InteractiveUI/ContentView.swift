//
//  ContentView.swift
//  InteractiveUI
//
//  Created by Scholar on 8/6/25.
//

import SwiftUI

struct ContentView: View {
    @State private var name2 = ""
    @State private var textTitle2 = ""
   @State private var name = ""
    @State private var textTitle = "What is your name?"
    var body: some View {
            
        
            ZStack {
                Color(.orange)
                    .ignoresSafeArea()

            
            VStack {
                Text(textTitle)
                    .font(.title)
                    .fontWeight(.medium)
              
                TextField("Type your name here...", text: $name )
                    .multilineTextAlignment(.center)
                    .font(.title)
                    .border(Color.pink, width:4)
                
                Button("Submit Name") {
                    textTitle = "WELCOME, \(name)!"
                }
                .font(.title2)
                .buttonStyle(.borderedProminent)
                .tint(.pink)
                
                Text("When were you born?")
                    .font(.title)
                    .fontWeight(.medium)
                
                TextField(textTitle2, text: $name2 )
                    .multilineTextAlignment(.center)
                    .font(.title)
                    .border(Color.pink, width:4)
                
                Button("Submit Name") {
                    textTitle = "WELCOME, \(name)!"
                }
                .font(.title2)
                .buttonStyle(.borderedProminent)
                .tint(.pink)
                        
            }
            
            
        }
        
        
        
            
            
            
            
            
    }
}

#Preview {
    ContentView()
}
