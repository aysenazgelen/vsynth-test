//
//  ToolBarView.swift
//  test
//
//  Created by Ayşenaz Gelen on 18.05.2025.
//

import SwiftUI

public struct ToolBarView: View {
    public var body: some View {
        ZStack {
            // Left-aligned edit & cut
            HStack(spacing: 10) {
                Button(action: {
                    // Edit
                }) {
                    Image(systemName: "pencil")
                }

                Button(action: {
                    // Delete
                }) {
                    Image(systemName: "scissors")
                }

                Spacer()
            }

            // Centered playback controls
            HStack(spacing: 10) {
                Button(action: {
                    // Go to beginning
                }) {
                    Image(systemName: "backward.end.fill")
                }

                Button(action: {
                    // Play
                }) {
                    Image(systemName: "play.fill")
                }

                Button(action: {
                    // Go to end
                }) {
                    Image(systemName: "forward.end.fill")
                }
            }
        }
        .padding(.vertical, 3)
        .padding(.horizontal, 10)
        .frame(height: 40)
        .background(Color.gray.opacity(0.1))
        .overlay(
            Rectangle()
                .frame(height: 0.5)
                .foregroundColor(.gray),
            alignment: .bottom
        )
    }
}
