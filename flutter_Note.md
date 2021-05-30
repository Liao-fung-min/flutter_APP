Flutter
===
###### tags: `行動裝置`
##### 版本
* flutter version 1 
* Android studio version 4.1
### 安裝跟設定環境

#### 程式下載
1. 先去官網下載flutter壓縮檔
![](https://i.imgur.com/j37BCs6.png)
2. 開啟.bat檔
![](https://i.imgur.com/DihxGYZ.png)
3. 指定到下載的路徑中
![](https://i.imgur.com/606Ur5V.png)
#### 設定環境變數
1. path 中的環境變數去設定flutter的bin檔
![](https://i.imgur.com/qFFM987.png)

#### Android Studio設定
1. 官網下載
![](https://i.imgur.com/go6uk8R.png)
2. 設定一個資料夾SDK
![](https://i.imgur.com/CPI6kes.png)
3. 設定Android SDK
![](https://i.imgur.com/0lGH6D9.png)
指定value為剛剛設定的資料夾
4. 由於Android studio 4.1版本有bug SDK要手動指定
![](https://i.imgur.com/kWIZGAD.png)
指定你的SDK在哪一個地方，flutter config --android-sdk=你SDK所在的地方
![](https://i.imgur.com/tcj4f5b.png)
5. 完成
![](https://i.imgur.com/xer5Aio.png)

### flutter 架構
![](https://i.imgur.com/mv3ErJQ.png)
* .dart_tool	
記錄了一些dart工具庫所在的位置和資訊
* .idea	
android studio 是基於idea開發的，.idea 記錄了專案的一些檔案的變更記錄
* android	
Android專案資料夾
* ios	
iOS專案資料夾
* lib	
lib資料夾記憶體放我們的dart語音程式碼
* test	
用於存放我們的測試程式碼
* .gitignore
git忽略配置檔案
* .metadata	
IDE 用來記錄某個 Flutter 專案屬性的的隱藏檔案
* .packages	
pub 工具需要使用的，包含 package 依賴的 yaml 格式的檔案
* flutter_app.iml	
工程檔案的本地路徑配置
* pubspec.lock	
當前專案依賴所生成的檔案
* pubspec.yaml	
當前專案的一些配置檔案，包括依賴的第三方庫、圖片資原始檔等
* README.md	
READEME檔案
* web 
是flutter2新增web的檔案
#### 比較重要的四個資料夾是 android、ios、lib、test
:::info
* lib
我們日常開發的dart語言程式碼都放在這裡，可以說是我們的“核心工作資料夾”
:::
:::info
* ios
這裡麵包含了iOS專案相關的配置和檔案，當我們的專案需要打包上線的時候，需要開啟該檔案內的Runner.xcworkspace檔案進行編譯和打包工作。
:::
:::info
* android
與ios資料夾一樣，在android專案需要打包上架的時候，也需要使用此資料夾裡面的檔案。同樣的如果我們需要原生程式碼的支援，原生程式碼也是放在這裡。
:::
:::info
* test
這裡存放了我們在專案開發過程中的測試程式碼，良好的測試習慣是保證程式碼質量的必要手段，希望大家在test檔案裡寫更多的程式碼
:::

### VsCode小技巧
快速新增widget
![](https://i.imgur.com/d4QuREr.png)
指令:ctrl+shift+r

打開command
![](https://i.imgur.com/jq6wBHo.png)
control + shift + p

從StatelessWidget重構為StatefulWidget
右鍵按下重構


### 舊button 和 新button 的 style 區別
```java=
//舊button 寫法
舊 button(
        onPressed: resetHandler,
        child: Text('請重新填選'),                       
        color:Colors.blue,
        textColor: Colors.pink,
      )
//新button寫法
新 button(
        onPressed: resetHandler,
        child: Text('請重新填選'),           
        style :ButtonStyle(
        backgroundColor:MaterialStateProperty.all(Colors.blue),
        foregroundColor:MaterialStateProperty.all(Colors.pink),
        )
      )
//另一種寫法
新 button(
        onPressed: resetHandler,
        child: Text('請重新填選'),           
        style : 新 button.styleForm(primary: Colors.blue, onPrimary: Colors.pink),
        
      )  
          
```


| 舊button     | 新button       |
| ------------ | -------------- |
| FlatButton   | TextButton     |
| OutLineButton|                |
| RaisedButton | ElevatedButton |

### 開發者工具
![](https://i.imgur.com/8osLUiR.png)
可以選擇開啟
![](https://i.imgur.com/4jZYfd6.png)


### 重要的Widgets
* Row
![](https://i.imgur.com/YtoRicq.png)
* Column
![](https://i.imgur.com/pcWGodt.png)

### 增加套件
在pubspec.yaml中的dependencies裡面設定
![](https://i.imgur.com/VP9kaAM.png)
PS:套件要跟flutter的標題對齊，不然會無法import到

增加字形套件
![](https://i.imgur.com/DQggQwH.png)
依據資料夾新增路徑
![](https://i.imgur.com/Cvq4C74.png)


### Scaffold 類別
參考資料:https://medium.com/flutter-taipei/%E4%BE%86%E5%90%A7-flutter-6-%EF%BD%97idget%E7%9A%84%E9%AA%A8%E6%9E%B6-scaffold%E9%A1%9E%E5%88%A5-c8bc382c5b53

問題
1.Your project path contains non-ASCII characters.
由於路徑上ㄧ
https://gn02214231.pixnet.net/blog/post/206066407-android-studio-%E8%B7%AF%E5%BE%91%E9%8C%AF%E8%AA%A4

#### 狀態

Stateful 和 Sateless 差別
https://medium.com/flutter-taipei/%E4%BE%86%E5%90%A7-flutter-4-stateless-v-s-stateful-widget-515746081498

https://ithelp.ithome.com.tw/articles/10217200


