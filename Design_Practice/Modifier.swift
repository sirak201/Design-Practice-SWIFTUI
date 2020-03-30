//
//  Modifier.swift
//  Design_Practice
//
//  Created by Sirak Zeray on 3/29/20.
//  Copyright © 2020 Sirak Zeray. All rights reserved.
//

import SwiftUI


struct DoubleShadowModifier : ViewModifier {
    func body(content: Content) -> some View {
        content.shadow(color: Color.black.opacity(0.1), radius: 10, x: 0, y: 10)
                .shadow(color: Color.black.opacity(0.1), radius: 1, x: 0, y: 1)
    }
}
