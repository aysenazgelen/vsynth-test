//
//  ToolBarView.swift
//  test
//
//  Created by Ayşenaz Gelen on 18.05.2025.
//

import SwiftUI

public struct ToolBarView: View {
    public var body: some View {
        HStack {
            Button(action: {
                // Action for Add
            }) {
                Image(systemName: "plus")
                Text("Add")
            }

            Spacer()

            Button(action: {
                // Action for Edit
            }) {
                Image(systemName: "pencil")
                Text("Edit")
            }

            Spacer()

            Button(action: {
                // Action for Delete
            }) {
                Image(systemName: "trash")
                Text("Delete")
            }
        }
        .padding()
        .background(Color.gray.opacity(0.1)) // SwiftUI-native
        .overlay(
            Rectangle()
                .frame(height: 0.5)
                .foregroundColor(.gray),
            alignment: .bottom
        )
        
    }
}
