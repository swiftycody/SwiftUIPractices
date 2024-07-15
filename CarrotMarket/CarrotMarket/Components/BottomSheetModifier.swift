//
//  BottomSheetModifier.swift
//  CarrotMarket
//
//  Created by solgoon on 7/13/24.
//

import SwiftUI

extension View {
    func bottomSheet<SheetContent: View>(isShowing: Binding<Bool>, @ViewBuilder sheetContent: @escaping () -> SheetContent) -> some View {
        self.modifier(BottomSheetModifier(isShowing: isShowing, sheetContent: sheetContent))
    }
}

struct BottomSheetModifier<SheetContent: View>: ViewModifier {
    @Environment(\.colorScheme) var colorScheme
    @Binding var isShowing: Bool
    let sheetContent: () -> SheetContent
    @State private var sheetHeight: CGFloat = 0
    @State private var dragOffset: CGFloat = 0
    var offset: CGFloat {
        isShowing ? 0 : sheetHeight
    }
    
    func body(content: Content) -> some View {
        ZStack {
            content
            
            if isShowing {
                // BottomSheet의 배경
                Color.black.opacity(0.1)
                    .ignoresSafeArea()
                    .onTapGesture {
                        withAnimation {
                            isShowing = false
                        }
                    }
                    .transition(.opacity)
            }
            
            // BottomSheet
            VStack {
                Spacer()
                VStack(spacing: 0) {
                    Rectangle() // BottomSheet의 핸들
                        .frame(width: 50, height: 4)
                        .cornerRadius(2, corners: [.allCorners])
                        .padding(.vertical, 8)
                        .gesture(
                            DragGesture()
                                .onChanged { value in
                                    // NOTE:  DragGesture는 아래방향이 +, 윗방향이 -로 height값이 됨
                                    if dragOffset + value.translation.height > 0 {
                                        dragOffset = dragOffset + value.translation.height
                                    }
                                }
                                .onEnded { value in
                                    if value.translation.height > 0 {
                                        isShowing = false
                                    } else {
                                        isShowing = true
                                    }
                                    dragOffset = 0
                                }
                        )
                    
                    sheetContent() // BottomSheet의 content
                        .padding(.top)
                }
                .background( // NOTE: 크기를 알고 싶은 View의 background로 GeometryReader를 넣으면 크기를 알 수 있다
                    GeometryReader { geometry in
                        Color.backgroundColor(forScheme: colorScheme)
                            .onAppear {
                                sheetHeight = geometry.size.height
                            }
                    })
                .background(Color.white)
                .frame(maxWidth: .infinity)
                .cornerRadius(20, corners: [.topLeft, .topRight])
                .offset(y: offset + dragOffset)
                .animation(.easeInOut(duration: 0.25), value: isShowing)
                .shadow(radius: 10)
            }
            .ignoresSafeArea(edges: .bottom)
        }
    }
}
