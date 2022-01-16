// ContentView.swift
// TodoApp
// Created by yusuke_kokubu on 2021/01/17.

import SwiftUI

struct ContentView: View {
    @ObservedObject var userData = UserData()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(userData.tasks) { task in
                    Button(action: {
                        guard let index = self.userData.tasks.firstIndex(of: task) else { return }
                        
                        self.userData.tasks[index].check.toggle()
                    })
                    {
                        ListRow(task: task.title, isCheck: task.check)
                    }
                }
                Text("+")
                    .font(.title)
            }
            .navigationBarTitle(Text("Todoアプリ"))
            .navigationBarItems(trailing: Button(action: {
                DeleteTask()
            })
            {
                Text("未完了タスクを表示")
            })
        }
    }
    
    func DeleteTask() {
        let necessaryTask = self.userData.tasks.filter({!$0.check})
        self.userData.tasks = necessaryTask
    }
}

struct ContentView_Preview: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

