//
//  WalletSettingView.swift
//  MetaMask
//
//  Created by 莫熙涛 on 2022/7/21.
//

import SwiftUI

struct AccountView: View {
    @State var balance: Int64
    var account: Account {
        let data: Data? = readLocalJson()
        let decoder = JSONDecoder()
        let modelObject = try? decoder.decode(Account.self, from: data!)
        return modelObject ?? Account(username: "account", balance: 0, publicAddress: "0x11011")
    }
    
    func submit(purchasedVal: Int64) {
        balance += purchasedVal
        print("Purchased: " + String(purchasedVal))
    }

    // read data from account.json file
    func readLocalJson() -> Data? {
        if let path = Bundle.main.path(forResource: "account", ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                return data
              } catch {
                   print(error)
              }
        }
        return nil
    }
    
    var tradeTypes: [Trade] = [.Receive, .Buy, .Send, .Swap]
    
    // The available trade buttons
    var tradeRow: some View {
        NavigationLink(destination: PurchaseView(onSubmit:submit)) {
            HStack(alignment: .center, spacing: 16) {
                ForEach(tradeTypes, id: \.self) { trade in
                    MMIconItemView(imageName: trade.imageName , title: trade.funcName, enabled: trade.available)
                }
            }
        }
    }
    
    // shows account name and balance
    var accountInfo: some View {
        VStack(alignment: .center, spacing: 16) {
            Circle()
                .fill(.blue)
                .frame(width: 64, height: 64, alignment: .center)
                .overlay(
                    Image(systemName: "person")
                        .resizable()
                        .frame(width: 32, height: 32, alignment: .center)
                        .foregroundColor(.white)
                )
            Text(account.username)
                .font(.title)
            Text(String(format:"$ %d", arguments: [balance]))
                .font(.footnote)
            RoundedRectangle(cornerRadius: 25)
                .stroke(Color.blue, lineWidth: 2)
                .frame(width:200, height: 32)
                .overlay {
                    Text(account.publicAddress)
                        .lineLimit(1)
                        .truncationMode(.middle)
                        .font(.footnote)
                        .padding()
                }
        }
    }
    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 16) {
                accountInfo.padding(.bottom, 32)
                tradeRow.padding(.bottom, 24)
                StorageTabView(balance: balance, onSubmit: submit)
            }
        }.navigationBarHidden(true)
    }
}
