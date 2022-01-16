//  ListRow.swift
//  TodoApp
//  Created by 國分悠輔 on 2022/01/17.

import SwiftUI

struct ListRow: View {
    let task: String
    
    var body: some View {
        HStack {
            Text("□")
            Text(task)
        }
    }
}

struct ListRow_Previews: PreviewProvider {
    static var previews: some View {
        ListRow(task: "修論")
    }
}
