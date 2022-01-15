//  ContentView.swift
//  TodoApp
//  Created by 國分悠輔 on 2022/01/08.

import SwiftUI

struct ContentView: View {
    var body: some View {
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
        Button(action: {print("ボタン押下")}) {
            Text("クリック！")
        }
    }
}

func Report() {
    print("ボタン押下")
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

