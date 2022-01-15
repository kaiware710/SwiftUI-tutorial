//  ContentView.swift
//  TodoApp
//  Created by 國分悠輔 on 2022/01/08.

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        List {
            Text("おはよう")
                .foregroundColor(Color.red)
                .padding()
            Text("こんにちは")
                .foregroundColor(Color.blue)
                .padding()
            Text("こんばんは")
                .foregroundColor(Color.gray)
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

