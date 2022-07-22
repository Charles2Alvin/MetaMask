//
//  WelcomeView.swift
//  MetaMask
//
//  Created by 莫熙涛 on 2022/7/21.
//

import SwiftUI

struct WelcomeView: View {
    let dataLoader: DataLoader = DataLoader()
    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 30) {
                Text("欢迎使用MetaMask")
                    .font(.title).bold()
                Text("MetaMask深受数百万人信任，是一款可以让所有人进入web3世界的安全钱包。")
                    .font(.footnote).foregroundColor(.gray).padding()
                Spacer()
                Image("WelcomeImage").resizable().frame(width: 300, height: 300, alignment: .center)
                Spacer()
                NavigationLink {
                    AccountView(balance: dataLoader.getBalance())
                } label: {
                    MMStrongButton(title: "开始使用")
                }.padding()
            }.navigationBarTitle("M E T A M A S K").navigationBarTitleDisplayMode(.inline)
        }
    }
}

