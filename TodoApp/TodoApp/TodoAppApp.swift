//  TodoAppApp.swift
//  TodoApp
//  Created by 國分悠輔 on 2022/01/15.

import SwiftUI

@main
struct TodoAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(UserData())
        }
    }
}
