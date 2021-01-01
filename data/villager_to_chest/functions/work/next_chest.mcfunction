#> villager_to_chest:work/next_chest
# 次のチェストにアイテムを設定するようにする
#
# @within
#   function
#       villager_to_chest:work/set_item
#       villager_to_chest:work/next_chest

#schedule clear villager_to_chest:next_chest

execute as @e[tag=Start] at @e[tag=InputChest] positioned ~ 0 ~-1 if entity @e[dy=255] as @e[tag=InputChest] at @s run tag @s add right
execute as @e[tag=Start] at @e[tag=InputChest] positioned ~ 0 ~-1 unless entity @e[dy=255] as @e[tag=InputChest] run tag @s add up

execute as @e[tag=right] at @s run tp ~ ~ ~-1
execute as @e[tag=up] at @s run tp ~ ~1 ~1

tag @e[tag=right] remove right
tag @e[tag=up] remove up

data remove storage villager_to_chest: chest_data
scoreboard players remove 村人の交易数 VillagerToChest 8

scoreboard players set 現在の交易順番 VillagerToChest 0
#function villager_to_chest:save_recipes
function villager_to_chest:work/set_item

execute if score 現在の交易順番 VillagerToChest = 村人の交易数 VillagerToChest run function villager_to_chest:work/reset