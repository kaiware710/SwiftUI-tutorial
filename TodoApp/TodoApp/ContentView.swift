// ContentView.swift
// TodoApp
// Created by yusuke_kokubu on 2021/01/17.

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                HStack {
                    Text("□")
                    Text("修論")
                }
                Text("Swift 学習")
                Text("+")
                    .font(.title)
            }
            .navigationBarTitle(Text("Todoアプリ"))
            .navigationBarItems(trailing: Text("Delete"))
        }
    }
}

struct ContentView_Preview: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

