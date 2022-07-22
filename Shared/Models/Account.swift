//
//  Account.swift
//  MetaMask
//
//  Created by 莫熙涛 on 2022/7/22.
//

import Foundation

struct Account : Codable {
    let username: String
    var balance: Int64
    let publicAddress: String
}
