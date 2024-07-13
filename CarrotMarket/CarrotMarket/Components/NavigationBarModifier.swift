//
//  CarrotNavigationBarModifier.swift
//  CarrotMarket
//
//  Created by solgoon on 6/29/24.
//

import SwiftUI

struct NavigationBar: View {
    @Environment(\.colorScheme) var colorScheme
    
    let leftItems: [NavigationItem]
    let rightItems: [NavigationItem]
    let background: Color
    let colorTheme: Color
    
    var body: some View {
        HStack(spacing: 16) {
            ForEach(leftItems) { item in
                NavigationItemView(navigationItem: item, colorTheme: colorTheme)
            }
            Spacer()
            ForEach(rightItems) { item in
                NavigationItemView(navigationItem: item, colorTheme: colorTheme)
            }
        }
        .frame(height: 44)
        .padding(.horizontal, 16)
        .background(background)
    }
}

enum NavigationItem: Identifiable, Equatable {
    case back
    case home(action: () -> Void)
    case goodsDetailMenu(action: () -> Void)
    case share(action: () -> Void)
    case region(title: String, action: () -> Void)
    case search(action: () -> Void)
    case menu(action: () -> Void)
    case notification(action: () -> Void)
    
    var id: String {
        switch self {
        case .back: "back"
        case .home: "home"
        case .goodsDetailMenu: "goodsDetailMenu"
        case .share: "share"
        case .region: "region"
        case .search: "search"
        case .menu: "menu"
        case .notification: "notification"
        }
    }
    
    static func == (lhs: NavigationItem, rhs: NavigationItem) -> Bool {
        switch (lhs, rhs) {
        case (back, back): true
        case (home, home): true
        case (goodsDetailMenu, goodsDetailMenu): true
        case (share, share): true
        case (region, region): true
        case (search, search): true
        case (menu, menu): true
        case (notification, notification): true
        default: false
        }
    }
    
}

struct NavigationItemView: View {
    @Environment(\.presentationMode) var presentationMode
    
    let navigationItem: NavigationItem
    let colorTheme: Color
    
    init(navigationItem: NavigationItem, colorTheme: Color = .black) {
        self.navigationItem = navigationItem
        self.colorTheme = colorTheme
    }
    
    var body: some View {
        switch navigationItem {
        case .back:
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "chevron.left")
                    .frame(width: 24, height: 24)
                    .foregroundStyle(colorTheme)
            })
        case let .home(action):
            Button(action: action, label: {
                Image(systemName: "house")
                    .frame(width: 24, height: 24)
                    .foregroundStyle(colorTheme)
            })
        case let .goodsDetailMenu(action):
            Button(action: action, label: {
                Image(systemName: "ellipsis")
                    .frame(width: 24, height: 24)
                    .foregroundStyle(colorTheme)
            })
        case let .share(action):
            Button(action: action, label: {
                Image(systemName: "square.and.arrow.up")
                    .frame(width: 24, height: 24)
                    .foregroundStyle(colorTheme)
            })
        case let .region(title, action):
            Button(action: action, label: {
                HStack(spacing: 6) {
                    Text("\(title)")
                        .textStyle(style: .B18, color: colorTheme)
                    Image(systemName: "chevron.down")
                        .frame(width: 24, height: 24)
                        .foregroundStyle(colorTheme)
                }
            })
        case let .search(action):
            Button(action: action, label: {
                Image(systemName: "magnifyingglass")
                    .frame(width: 24, height: 24)
                    .foregroundStyle(colorTheme)
            })
        case let .menu(action):
            Button(action: action, label: {
                Image(systemName: "line.3.horizontal")
                    .frame(width: 24, height: 24)
                    .foregroundStyle(colorTheme)
            })
        case let .notification(action):
            Button(action: action, label: {
                Image(systemName: "bell")
                    .frame(width: 24, height: 24)
                    .foregroundStyle(colorTheme)
            })
        }
    }
}

extension View {
    func navigationBar(isOnZStack: Bool = false,
                       leftItems: [NavigationItem] = [],
                       rightItems: [NavigationItem] = [],
                       background: Color = .black,
                       colorTheme: Color = .black) -> some View {
        modifier(NavigationBarModifier(
            isOnZStack: isOnZStack,
            leftItems: leftItems,
            rightItems: rightItems,
            background: background,
            colorTheme: colorTheme))
    }
}

struct NavigationBarModifier: ViewModifier {
    let isOnZStack: Bool
    let leftItems: [NavigationItem]
    let rightItems: [NavigationItem]
    let background: Color
    let colorTheme: Color
    
    init(isOnZStack: Bool,
         leftItems: [NavigationItem],
         rightItems: [NavigationItem],
         background: Color = .white,
         colorTheme: Color = .black) {
        self.isOnZStack = isOnZStack
        self.leftItems = leftItems
        self.rightItems = rightItems
        self.background = background
        self.colorTheme = colorTheme
    }
    
    func body(content: Content) -> some View {
        if isOnZStack {
            content
                .ignoresSafeArea(edges: .top)
                .navigationBarBackButtonHidden()
                .toolbar {
                    ToolbarItemGroup(placement: .navigationBarLeading) {
                        ForEach(leftItems) { item in
                            NavigationItemView(navigationItem: item)
                        }
                    }
                    ToolbarItemGroup(placement: .navigationBarTrailing) {
                        ForEach(rightItems) { item in
                            NavigationItemView(navigationItem: item)
                        }
                    }
                }
        } else {
            NavigationView {
                VStack(spacing: 0) {
                    Divider()
                    content
                        .navigationBarBackButtonHidden()
                        .toolbar {
                            ToolbarItemGroup(placement: .navigationBarLeading) {
                                ForEach(leftItems) { item in
                                    NavigationItemView(navigationItem: item)
                                }
                            }
                            ToolbarItemGroup(placement: .navigationBarTrailing) {
                                ForEach(rightItems) { item in
                                    NavigationItemView(navigationItem: item)
                                }
                            }
                        }
                }
            }
        }
    }
}

