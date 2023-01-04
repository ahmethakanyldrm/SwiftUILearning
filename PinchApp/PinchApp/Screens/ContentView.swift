//
//  ContentView.swift
//  PinchApp
//
//  Created by AHMET HAKAN YILDIRIM on 4.01.2023.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Property

    @State private var isAnimating: Bool = false
    @State private var imageScale: CGFloat = 1
    @State private var imageOffset: CGSize = .zero
    // CGSize(width: 0, height: 0)

    // MARK: - Function

    func reserImageState() {
        return withAnimation(.spring()) {
            imageScale = 1
            imageOffset = .zero
            
        }
    }

    // MARK: - Content

    var body: some View {
        NavigationView {
            ZStack {
                // MARK: - Page Image

                Image("magazine-front-cover")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(10)
                    .padding()
                    .shadow(color: .black.opacity(0.2), radius: 12, x: 2, y: 2)
                    .opacity(isAnimating ? 1 : 0)
                    .offset(x: imageOffset.width, y: imageOffset.height)
                    .scaleEffect(imageScale)

                    // MARK: - 1. TAP GESTURE

                    .onTapGesture(count: 2, perform: {
                        if imageScale == 1 {
                            withAnimation(.spring()) {
                                imageScale = 5
                            }
                        } else {
                            reserImageState()
                        }
                    })

                    // MARK: - Drag Gesture

                    .gesture(
                        DragGesture()
                            .onChanged({ value in
                                withAnimation(.linear(duration: 1)) {
                                    imageOffset = value.translation
                                }
                            })
                            .onEnded { _ in
                                if imageScale <= 1 {
                                   reserImageState()
                                }
                            }
                    )
            } //: ZStack
            .navigationTitle("Pinch & Zoom")
            .navigationBarTitleDisplayMode(.inline)
            .onAppear {
                withAnimation(.linear(duration: 1)) {
                    isAnimating = true
                }
            }
        } //: Navigation
        .navigationViewStyle(.stack)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
