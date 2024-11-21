//
//  MyResumeApp.swift
//  MyResume
//
//  Created by zwj on 2023/11/15.
//

import SwiftUI


let Paper_Size = CGSize(width: 210 * 4, height: 297 * 4)



@main
struct MyResumeApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}


struct ContentView: View {
    var body: some View {
        NavigationStack {
            Form {
                NavigationLink("第一页") {
                    FirstView()
                }
                
                NavigationLink("第二页") {
                    SecondView()
                }
            }
        }
    }
}


#Preview {
    ContentView()
}
