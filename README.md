# Swift-Flowing-multitext
Swiftで書かれた複数のテキストが右から左へ流れるサンプルです

![iOS Simulator Screen Shot 2015.08.17 6.16.23.png](https://qiita-image-store.s3.amazonaws.com/0/62043/144c68f0-5678-7e54-c5aa-830afb3c7c76.png)
![iOS Simulator Screen Shot 2015.08.17 6.16.24.png](https://qiita-image-store.s3.amazonaws.com/0/62043/29b70941-e200-1cd7-6ecd-6a9d9cd36f37.png)

#Usage
ViewDidLoadで0.1秒毎にitemsディクショナリ内のテキストを検索します。
その秒数にテキストが存在した場合ラベルを生成しアニメーションを付けます。

使い方はディクショナリを作るだけです。
ディクショナリ内のキーバリューFloatが秒数でその秒数になると対応するStringがテキストラベルになって流れます。
