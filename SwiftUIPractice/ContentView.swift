//
//  ContentView.swift
//  SwiftUIPractice
//
//  Created by h-chaya on 2024/11/11.
//

import SwiftUI

struct ContentView: View {
    @State private var color: Color = .red
    var body: some View {
        VStack {
            Text("Hello, World!")
                .foregroundStyle(color)
            Button {
                if color == .red {
                    color = .blue
                } else {
                    color = .red
                }
            } label: {
                Text("button")
            }
            BindingView(color: $color)
        }
    }
}

struct BindingView: View {
    @Binding var color: Color
    var body: some View {
        VStack {
            Button {
                if color == .green {
                    color = .blue
                } else {
                    color = .green
                }
            } label: {
                Text("Binding Button")
            }
        }
    }
}

#Preview {
    ContentView()
}
