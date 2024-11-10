//
//  BindingView.swift
//  SwiftUIPractice
//
//  Created by h-chaya on 2024/11/11.
//

import SwiftUI

struct ContentView: View {
    @State private var isOn: Bool = false
    var body: some View {
        VStack {
            Text(isOn ? "Hello, World!" : "Goodbye, World!")
            Toggle("Is On", isOn: $isOn)
                .padding()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
