#> villager_to_chest:add_slot
#
# Slotを追加する  
# 圧倒的ゴリ押し処理ぞ
#
# @within function villager_to_chest:set_item

scoreboard players set Slot VillagerToChest 0

#チェストの縦を"列" 横を"段" とする
# 段の設定
    execute if score 1交易の残り要素数 VillagerToChest matches 1..2 run scoreboard players operation Slot VillagerToChest += #9 VillagerToChest
    execute if score 1交易の残り要素数 VillagerToChest matches 2 run scoreboard players operation Slot VillagerToChest += #9 VillagerToChest

# 列の設定
    scoreboard players operation Slot VillagerToChest += 現在の交易順番 VillagerToChest

# Slotを追加 ここ圧倒的ゴリ押しポイント
    execute if score Slot VillagerToChest matches 0 run data modify storage villager_to_chest: recipe_data[0] merge from storage villager_to_chest: Slot[0]
    execute if score Slot VillagerToChest matches 1 run data modify storage villager_to_chest: recipe_data[0] merge from storage villager_to_chest: Slot[1]
    execute if score Slot VillagerToChest matches 2 run data modify storage villager_to_chest: recipe_data[0] merge from storage villager_to_chest: Slot[2]
    execute if score Slot VillagerToChest matches 3 run data modify storage villager_to_chest: recipe_data[0] merge from storage villager_to_chest: Slot[3]
    execute if score Slot VillagerToChest matches 4 run data modify storage villager_to_chest: recipe_data[0] merge from storage villager_to_chest: Slot[4]
    execute if score Slot VillagerToChest matches 5 run data modify storage villager_to_chest: recipe_data[0] merge from storage villager_to_chest: Slot[5]
    execute if score Slot VillagerToChest matches 6 run data modify storage villager_to_chest: recipe_data[0] merge from storage villager_to_chest: Slot[6]
    execute if score Slot VillagerToChest matches 7 run data modify storage villager_to_chest: recipe_data[0] merge from storage villager_to_chest: Slot[7]
    execute if score Slot VillagerToChest matches 8 run data modify storage villager_to_chest: recipe_data[0] merge from storage villager_to_chest: Slot[8]
    execute if score Slot VillagerToChest matches 9 run data modify storage villager_to_chest: recipe_data[0] merge from storage villager_to_chest: Slot[9]
    execute if score Slot VillagerToChest matches 10 run data modify storage villager_to_chest: recipe_data[0] merge from storage villager_to_chest: Slot[10]
    execute if score Slot VillagerToChest matches 11 run data modify storage villager_to_chest: recipe_data[0] merge from storage villager_to_chest: Slot[11]
    execute if score Slot VillagerToChest matches 12 run data modify storage villager_to_chest: recipe_data[0] merge from storage villager_to_chest: Slot[12]
    execute if score Slot VillagerToChest matches 13 run data modify storage villager_to_chest: recipe_data[0] merge from storage villager_to_chest: Slot[13]
    execute if score Slot VillagerToChest matches 14 run data modify storage villager_to_chest: recipe_data[0] merge from storage villager_to_chest: Slot[14]
    execute if score Slot VillagerToChest matches 15 run data modify storage villager_to_chest: recipe_data[0] merge from storage villager_to_chest: Slot[15]
    execute if score Slot VillagerToChest matches 16 run data modify storage villager_to_chest: recipe_data[0] merge from storage villager_to_chest: Slot[16]
    execute if score Slot VillagerToChest matches 17 run data modify storage villager_to_chest: recipe_data[0] merge from storage villager_to_chest: Slot[17]
    execute if score Slot VillagerToChest matches 18 run data modify storage villager_to_chest: recipe_data[0] merge from storage villager_to_chest: Slot[18]
    execute if score Slot VillagerToChest matches 19 run data modify storage villager_to_chest: recipe_data[0] merge from storage villager_to_chest: Slot[19]
    execute if score Slot VillagerToChest matches 20 run data modify storage villager_to_chest: recipe_data[0] merge from storage villager_to_chest: Slot[20]
    execute if score Slot VillagerToChest matches 21 run data modify storage villager_to_chest: recipe_data[0] merge from storage villager_to_chest: Slot[21]
    execute if score Slot VillagerToChest matches 22 run data modify storage villager_to_chest: recipe_data[0] merge from storage villager_to_chest: Slot[22]
    execute if score Slot VillagerToChest matches 23 run data modify storage villager_to_chest: recipe_data[0] merge from storage villager_to_chest: Slot[23]
    execute if score Slot VillagerToChest matches 24 run data modify storage villager_to_chest: recipe_data[0] merge from storage villager_to_chest: Slot[24]
    execute if score Slot VillagerToChest matches 25 run data modify storage villager_to_chest: recipe_data[0] merge from storage villager_to_chest: Slot[25]
    execute if score Slot VillagerToChest matches 26 run data modify storage villager_to_chest: recipe_data[0] merge from storage villager_to_chest: Slot[26]
    execute if score Slot VillagerToChest matches 27 run data modify storage villager_to_chest: recipe_data[0] merge from storage villager_to_chest: Slot[27]