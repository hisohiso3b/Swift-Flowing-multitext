# Swift-Flowing-multitext
Swiftで書かれた複数のテキストが右から左へ流れるサンプルです  
  
ViewDidLoadで0.1秒毎にitemsディクショナリ内のテキストを検索します。  
その秒数にテキストが存在した場合ラベルを生成しアニメーションを付けます。  
  
![名称未設定.png](https://qiita-image-store.s3.amazonaws.com/0/62043/751677f6-1551-7f0e-94cd-b3d1c0968f54.png)
  
#Usage
使い方はディクショナリを作るだけです。  
ディクショナリ内のキーバリューFloatが秒数でその秒数になると対応するStringがテキストラベルになって流れます。  

#コメント付きViewController.Swift  
Qiita : http://qiita.com/hiso/items/38eb300dc263f01a2a6c  
