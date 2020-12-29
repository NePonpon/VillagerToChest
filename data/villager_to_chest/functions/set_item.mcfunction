#> villager_to_chest:set_item
#
# チェストにアイテムを配置する
#
# @input
#   storage villager_to_chest: recipe_data
#
# @within
#   function villager_to_chest:save_villager  
#   function villager_to_chest:set_item

execute store result score 1交易の残り要素数 VillagerToChest run data get storage villager_to_chest: recipe_data

scoreboard players operation 1交易の残り要素数 VillagerToChest -= #3 VillagerToChest
scoreboard players operation 1交易の残り要素数 VillagerToChest *= #-1 VillagerToChest

# 1交易の残り要素 が
# 0ならbuy 1ならbuyB 2ならsell 3なら処理終了

# Slotを追加する
execute if score 1交易の残り要素数 VillagerToChest matches 0..2 run function villager_to_chest:add_slot

data modify storage villager_to_chest: chest_data append from storage villager_to_chest: recipe_data[0]
data remove storage villager_to_chest: recipe_data[0]

execute if score 1交易の残り要素数 VillagerToChest matches 3 run scoreboard players add 現在の交易順番 VillagerToChest 1
execute if score 1交易の残り要素数 VillagerToChest matches 3 run function villager_to_chest:save_recipes

execute unless score 現在の交易順番 VillagerToChest = 村人の交易数 VillagerToChest run function villager_to_chest:set_item

data modify block -216 4 -239 Items set from storage villager_to_chest: chest_data