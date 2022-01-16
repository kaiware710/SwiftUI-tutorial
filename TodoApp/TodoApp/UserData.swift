//
//  UserData.swift
//  TodoApp
//
//  Created by 國分悠輔 on 2022/01/17.
//

import SwiftUI

class UserData: ObservableObject {
    @Published var tasks = [
        Task(title: "修論", check: false),
        Task(title: "Swiftアプリ", check: true),
        Task(title: "ダンス", check: true)
    ]
    
    @Published var isEditing: Bool = false
}
