//
//  ContentView.swift
//  Bullseye with SwiftUI
//
//  Created by Tony Hong on 2/17/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var num: Double = 50
    @State var toggle = false
    
    var body: some View {
        VStack() {
            HStack() {
                VStack() {
                    Text("High Score")
                    Text("0")
                }
                .padding(.leading, 20)
                .padding(.top, 20)
                
                Spacer()
                
                VStack() {
                    Text("Current Level")
                    Text("1")
                }
                .padding(.trailing, 20)
                .padding(.top, 20)
            }
            
            Text("Move the slider to: ").font(.system(size: 30)).padding(.top, 200)
            Text("\(num, specifier: "%.1f")").font(.system(size: 30))
            Slider(value: $num, in: 0...100).padding(.leading, 20).padding(.trailing, 20)
            Button{
                
            } label: {
                Text("Check?")
            }
            
            Spacer()
            
            Text("Exact Mode?").font(.system(size: 20))
            Toggle("", isOn: $toggle).labelsHidden()
        }
    }
}

