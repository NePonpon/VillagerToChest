#> villager_to_chest:work/next_chest
# 次のチェストにアイテムを設定するようにする
#
# @within
#   function
#       villager_to_chest:work/set_item
#       villager_to_chest:work/next_chest

#schedule clear villager_to_chest:next_chest

execute as @e[tag=VTS_Start] at @e[tag=VTS_InputChest] positioned ~ 0 ~-1 if entity @e[dy=255] as @e[tag=VTS_InputChest] at @s run tag @s add VTS_side
execute as @e[tag=VTS_Start] at @e[tag=VTS_InputChest] positioned ~ 0 ~-1 unless entity @e[dy=255] as @e[tag=VTS_InputChest] run tag @s add VTS_up

execute as @e[tag=VTS_side] at @s run tp ~ ~ ~-1
execute as @e[tag=VTS_up] at @s run tp ~ ~1 ~1

tag @e[tag=VTS_side] remove VTS_side
tag @e[tag=VTS_up] remove VTS_up

data remove storage villager_to_chest: chest_data
scoreboard players remove 村人の交易数 VillagerToChest 8

scoreboard players set 現在の交易順番 VillagerToChest 0
#function villager_to_chest:save_recipes
function villager_to_chest:work/set_item

execute if score 現在の交易順番 VillagerToChest = 村人の交易数 VillagerToChest run function villager_to_chest:work/reset