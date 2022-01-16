// ContentView.swift
// TodoApp
// Created by yusuke_kokubu on 2021/01/17.

import SwiftUI

struct Task: Identifiable {
    let id = UUID()
    var title: String
    var check: Bool
    
    init(title: String, check: Bool) {
        self.title = title
        self.check = check
    }
}

struct ContentView: View {
    var userData = UserData()  // 構造体のインスタンス作成
    
    var body: some View {
        NavigationView {
            List {
                ForEach(userData.tasks) { task in
                    ListRow(task: task.title, isCheck: task.check)
                }
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

