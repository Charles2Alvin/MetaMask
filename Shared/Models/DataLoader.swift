//
//  DataLoader.swift
//  MetaMask
//
//  Created by 莫熙涛 on 2022/7/22.
//

import Foundation

class DataLoader {
    var account: Account {
        let data: Data? = readLocalJson()
        let decoder = JSONDecoder()
        let modelObject = try? decoder.decode(Account.self, from: data!)
        return modelObject ?? Account(username: "account", balance: 0, publicAddress: "0x11011")
    }
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
    func getBalance() -> Int64 {
        return account.balance
    }
}
