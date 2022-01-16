//  ListRow.swift
//  TodoApp
//  Created by 國分悠輔 on 2022/01/17.

import SwiftUI

struct ListRow: View {
    let task: String
    var isCheck: Bool
    
    var body: some View {
        HStack {
            if isCheck {
                Text("☑")
                Text(task)
                    .strikethrough()
                    .fontWeight(.ultraLight)
            } else {
                Text("□")
                Text(task)
            }
        }
    }
}

struct ListRow_Previews: PreviewProvider {
    static var previews: some View {
        ListRow(task: "修論", isCheck: false)
    }
}
