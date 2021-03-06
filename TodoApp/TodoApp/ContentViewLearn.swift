//  ContentViewLearn.swift
//  TodoApp
//  Created by 國分悠輔 on 2022/01/17.

import SwiftUI

struct ContentViewLearn: View {
    @State var lastName = "田中"
    let firstName = "優生"
        
    var body: some View {
        VStack {
            Button(action: {self.lastName = "堀内"}) {
                Text("名字変更")
            }
            Text(lastName + firstName)
        }
    }
        
//        NavigationView{
//            List {
//                Text("おはよう")
//                    .foregroundColor(Color.red)
//                    .padding()
//                    .font(.body)
//                Text("こんにちは")
//                    .foregroundColor(Color.blue)
//                    .padding()
//                    .font(.caption)
//                Text("こんばんは")
//                    .foregroundColor(Color.gray)
//                    .padding()
//                    .font(.subheadline)
//            }
//                .navigationBarTitle(Text("挨拶"))
//                .navigationBarItems(trailing:
//                    Text("言葉")
//                )
//        }
//        HStack {
//            Text("Japanese Greetings")
//            Text("日本語の挨拶")
//        }
//        VStack {
//            Text("Good Morning")
//                .padding()
//            Text("Hello")
//        }
//        Button(action: {print("ボタン押下")}) {
//            Text("クリック！")
//        }

}

//func Report() {
//    print("ボタン押下")
//}

struct Human: Identifiable {
    let id = UUID()
    let name: String
}

struct ArrayContentView: View {
    let humans = [
        Human(name: "田中"),
        Human(name: "堀内"),
        Human(name: "尾山")
    ]
    var body: some View {
        List {
            ForEach(humans) { human in
                Text("\(human.name)さん、こんにちは！")
                Text(human.id.description)
            }
        }
    }
}


struct ContentViewLearn_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewLearn()
    }
}

