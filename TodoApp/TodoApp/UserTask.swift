//  UserTask.swift
//  TodoApp
//  Created by 國分悠輔 on 2022/01/17.

import SwiftUI

struct Task: Identifiable, Equatable {
    let id = UUID()
    var title: String
    var check: Bool
    
    init(title: String, check: Bool) {
        self.title = title
        self.check = check
    }
}
