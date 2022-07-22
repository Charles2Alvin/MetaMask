//
//  MMStrongButton.swift
//  MetaMask
//
//  Created by 莫熙涛 on 2022/7/22.
//

import SwiftUI

struct MMStrongButton: View {
    let title: String
    init(title: String) {
        self.title = title
    }
    var body: some View {
        Text(title)
            .frame(maxWidth: 200, maxHeight:20)
            .font(.body)
            .padding(.all, 8)
            .overlay(
                RoundedRectangle(cornerRadius: 24)
                    .stroke(Color.blue, lineWidth: 2))
    }
}

