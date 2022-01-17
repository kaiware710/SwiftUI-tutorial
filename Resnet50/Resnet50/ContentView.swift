//  ContentView.swift
//  Resnet50
//  Created by 國分悠輔 on 2022/01/17.

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("猫の画像")
                .padding()
                .font(.title)
            Image("cat1")
                .resizable()
                .frame(width: 300, height: 300)
            
            Button(action: {
                
            }, label: {
                Text("この画像は何の画像？")
                    .padding()
                    .foregroundColor(Color.green)
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
