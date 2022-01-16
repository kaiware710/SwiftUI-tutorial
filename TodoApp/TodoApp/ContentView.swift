// ContentView.swift
// TodoApp
// Created by yusuke_kokubu on 2021/01/17.

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                ListRow(task: "修論", isCheck: false)
                ListRow(task: "Swift画像分類アプリ作成", isCheck: true)
                ListRow(task: "ダンス", isCheck: true)
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

