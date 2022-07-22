//
//  MMIconItemView.swift
//  MetaMask
//
//  Created by 莫熙涛 on 2022/7/22.
//

import SwiftUI

struct MMIconItemView: View {
    let imageName: String
    let title: String
    let size: CGFloat = 48;
    let enabled: Bool
    
    init(imageName: String, title: String, enabled: Bool) {
        self.imageName = imageName
        self.title = title
        self.enabled = enabled
    }
    var body: some View {
        VStack(alignment: .center, spacing: 16) {
            Circle().fill(enabled ? .blue : .gray).frame(width: size, height: size, alignment: .center).overlay(Image(systemName: imageName)
                .resizable()
                .frame(width: size/2, height: size/2, alignment: .center)
                .foregroundColor(.white))
            
            Text(title)
                .font(.caption)
                .foregroundColor(enabled ? .blue : .gray)
        }
    }
}

