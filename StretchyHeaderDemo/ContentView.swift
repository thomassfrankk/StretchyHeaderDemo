//
//  ContentView.swift
//  StretchyHeaderDemo
//
//  Created by Thomas Frank on 2/9/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 0) {
                // Stretchy header image
                Image("bengalCat")
                    .resizable()
                    .scaledToFill()
                    .frame(height: 400)
                    .clipped()
                    .stretchyHeader()
                
                // Heading and description
                VStack(alignment: .leading, spacing: 12) {
                    Text("Bengal Cat")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Text("Bengal cats are known for their playful personalities and striking leopard-like coats. They are energetic, curious, and love interactive play.")
                        .font(.body)
                        .foregroundStyle(.secondary)
                        .fixedSize(horizontal: false, vertical: true)
                }
                .padding()
            }
        }
        .ignoresSafeArea(edges: .top)
        .statusBarHidden()
    }
}

#Preview {
    ContentView()
}
