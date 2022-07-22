//
//  Trade.swift
//  MetaMask
//
//  Created by 莫熙涛 on 2022/7/22.
//

import Foundation
import SwiftUI

enum Trade {
    case Receive
    case Buy
    case Send
    case Swap
    var imageName: String {
        switch self {
        case .Receive:
            return "arrow.down"
        case .Buy:
            return "creditcard"
        case .Send:
            return "paperplane.fill"
        case .Swap:
            return "rectangle.2.swap"
        }
    }
    var funcName: String {
        switch self {
        case .Receive:
            return "接收"
        case .Buy:
            return "购买"
        case .Send:
            return "发送"
        case .Swap:
            return "交换"
        }
    }
    var available: Bool {
        switch self {
        case .Receive:
            return false
        case .Buy:
            return true
        case .Send:
            return false
        case .Swap:
            return false
        }
    }
    var nextView: some View {
        switch self {
        case .Receive:
            return EmptyView()
        case .Buy:
            return EmptyView()
        case .Send:
            return EmptyView()
        case .Swap:
            return EmptyView()
        }
    }
}
