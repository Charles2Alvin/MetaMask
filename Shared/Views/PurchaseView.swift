//
//  PurchaseView.swift
//  MetaMask
//
//  Created by 莫熙涛 on 2022/7/22.
//

import SwiftUI

struct PurchaseView: View {
    @State var amount: String = ""
    let onSubmit: (Int64) -> Void
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack(alignment: .center, spacing: 16) {
            Text("请输入要购买的代币的数量：")
            TextField("请输入数字，再按确定", text: $amount)
                .textInputAutocapitalization(.never)
                .disableAutocorrection(true)
                .border(.secondary)
                .padding()
                .keyboardType(.numberPad)
                .frame(maxWidth: 300)
            Button {
                onSubmit(Int64(amount) ?? 0)
                presentationMode.wrappedValue.dismiss()
            } label: {
                MMStrongButton(title: "确定")
            }
        }.textFieldStyle(.roundedBorder).navigationBarHidden(true)
    }
}
