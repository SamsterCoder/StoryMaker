//
//  CreateFile.swift
//  StoryMaker
//
//  Created by Sam Helbig on 26.06.26.
//

import SwiftUI
import SwiftData

struct CreateFile: View {
    @State private var fileName: String = ""
    var body: some View {
        NavigationStack {
            VStack() {
                Text("Create File:")
                    .font(Font.largeTitle.bold())
                TextField("Name", text: $fileName)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .padding()
                Button("Create") {
                }
            }
            .padding()
        }
    }
}

