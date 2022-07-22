# MetaMask
A wallet app for purchasing coins and NFTs

## 这是什么App？
这是一个模仿MetaMusk的app，所有设计与图片均来自MetaMusk及网上资源。

## 页面导览
该App由3个简单的页面组成：
- WelComeView（欢迎页），用于展示用户引导
- AccountView（账户页），用于展示代币余额、数字藏品列表、进行交易
- PurchaseView（购买页），可以购买代币

## 数据源
从resources文件夹中读取账户数据account.json，该文件包含用户名、代币余额、账户的公共地址

## 使用指引
- 在欢迎页点击“开始使用”，可以进入账户详情页
- 详情页中，关于代币交易的功能有4个：
  + 接收
  + 购买 ✅
  + 发送
  + 交换
  
  其中只有购买功能是可用的，所以该图标为蓝色、其他不可用的图标为灰色
  
 - 在详情页中，点击购买图标，或者点击底部的“购买ETH”，可以进入购买页面
 - 在购买页面中，点击输入框，输入你想购买的代币数量，再点确定，返回到账户页
 - 此时可以看到，账户页的余额已经更新

## 运行截图

![Image text](https://raw.github.com/charles2alvin/repositpry/main/metamusk/assets/WelcomeImage.png)

以上就是本app的所有功能。感谢你的光临！
