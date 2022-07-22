//
//  StorageTabView.swift
//  MetaMask
//
//  Created by 莫熙涛 on 2022/7/22.
//

import SwiftUI

struct StorageTabView: View {
    @State private var selectedTab = 0
    let tabViewHeight: CGFloat = 200
    let spacing: CGFloat = 16
    let balance: Int64
    let onSubmit: (Int64) -> Void
    var coinView: some View {
        VStack(spacing: spacing) {
            Divider()
            HStack(alignment: .center) {
                Image(systemName: "bitcoinsign.square")
                Text(String(format: "%d ETH", arguments: [balance]))
            }
            Divider()
            Text("准备开始探索区块链应用？")
            NavigationLink(destination: PurchaseView(onSubmit: onSubmit)) {
                MMStrongButton(title: "购买ETH")
            }
        }.frame(height: 200)
    }
    var collectionView: some View {
        VStack(spacing: spacing) {
            Spacer()
                .frame(height:8)
            Image(systemName: "book.circle.fill")
                .resizable()
                .frame(width: 48, height: 48, alignment: .center)
            Text("No NFTs yet")
                .bold()
            Text("您还没有任何收藏品！")
        }.frame(height: tabViewHeight)
    }
    var body: some View {
        VStack {
            Picker("", selection: $selectedTab) {
                Text("代币")
                    .tag(0)
                Text("收藏品")
                    .tag(1)
            }
            .pickerStyle(SegmentedPickerStyle())
            switch(selectedTab) {
                case 0: coinView
                case 1: collectionView
            default:
                Text("View 1")
            }
        }
    }
}

