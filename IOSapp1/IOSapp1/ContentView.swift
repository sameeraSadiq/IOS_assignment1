//
//  ContentView.swift
//  IOSapp1
//
//  Created by sameera sadiq on 2025-01-26.
//

import SwiftUI

struct ContentView: View {
    @State private var name: String = ""
        @State private var order: String = ""
        @State private var savedOrders: [String] = []

        var body: some View {
            VStack {
                Text("Tim Hortons Order App")
                    .font(.title)
                    .padding()

                TextField("Enter your name", text: $name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()

                TextField("Enter your order", text: $order)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()

                Button("Save Order") {
                    let newOrder = "\(name): \(order)"
                    savedOrders.append(newOrder)
                    name = ""
                    order = ""
                }
                .padding()
                .buttonStyle(.borderedProminent)

                List(savedOrders, id: \.self) { savedOrder in
                    Text(savedOrder)
                }
                .padding()
            }
            .padding()
        }
}

#Preview {
    ContentView()
}
