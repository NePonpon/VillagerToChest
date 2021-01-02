# VillagerToChest
村人の交易内容をチェストに反映させるデータパック

## 対応バージョン
JE 1.16.4(製作)

## 使用方法
### チェストの位置を設定する
まずはどこのチェストに交易内容をコピーするか決めなければいけません。  
以下のコマンドで入手してください。

```/function villager_to_chest:give_item```

設定用のアーマースタンドが手に入るので、任意の位置に設置してください。  
すると、発光したチェストが生成されます。この位置を基準にコピーされていくことになります。

撤去方法は、発光しているものを殴るだけです。チェストも同時に撤去されます。

設定できるチェストは1つまでです。複数個設置することはできません。

### 村人の交易内容をコピーする
コピーしたい村人を基準に  
```function villager_to_chest:copy```  
を実行してください。  
以下のコマンドをコピーして村人の近くで実行すると簡単です。  
```/execute as @e[type=villager,limit=1,sort=nearest] run function villager_to_chest:copy```

## 更新履歴

1.0 - リリース

## 連絡など
By Ponpon  
Twitter [@nepon13](https://twitter.com/nepon13)  
Discord Ponpon#5326  
GitHub [NePonpon](https://github.com/NePonpon)