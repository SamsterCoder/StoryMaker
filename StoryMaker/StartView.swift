//
//  StartView.swift
//  StoryMaker
//
//  Created by Sam Helbig on 25.06.26.
//

import SwiftUI
import SwiftData

struct StartView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                Text("Willkommen bei StoryMaker")
                    .font(.largeTitle).bold()

                NavigationLink("Neues Storyboard") {
                    ContentView() // deine bestehende Liste/Detail-Navigation
                }
                
                NavigationLink("Storyboards") {
                    SavedStoryBoardsView()
                }
                
                NavigationLink("Einstellungen") {
                    ContentView()
                }
            }
            .padding()
        }
    }
}
