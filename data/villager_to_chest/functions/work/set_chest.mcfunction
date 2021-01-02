#> villager_to_chest:work/set_chest
# チェストを複数個設置する
#　アイテムを設定できるようにする
#
# @within function villager_to_chest:work/save_villager

data modify entity @e[tag=VTS_Waiting,limit=1] Tags set value ["VillagerToChest","VTS_InputChest"]

execute if score チェストの数 VillagerToChest matches 1.. as @e[tag=VTS_Start] at @e[tag=VTS_InputChest] positioned ~ 0 ~-1 if entity @e[dy=255] as @e[tag=VTS_InputChest] at @s run tag @s add VTS_side
execute if score チェストの数 VillagerToChest matches 1.. as @e[tag=VTS_Start] at @e[tag=VTS_InputChest] positioned ~ 0 ~-1 unless entity @e[dy=255] as @e[tag=VTS_InputChest] run tag @s add VTS_up

execute as @e[tag=VTS_side] at @s run tp ~ ~ ~-1
execute as @e[tag=VTS_up] at @s run tp ~ ~1 ~1

execute as @e[tag=VTS_side] at @s run setblock ~ ~ ~ chest[facing=east,type=left]
execute as @e[tag=VTS_up] at @s run setblock ~ ~ ~ chest[facing=east,type=right]

scoreboard players remove チェストの数 VillagerToChest 1

tag @e[tag=VTS_side] remove VTS_side
tag @e[tag=VTS_up] remove VTS_up

execute if score チェストの数 VillagerToChest matches 1.. run function villager_to_chest:work/set_chest

execute as @e[tag=VTS_InputChest] at @e[tag=VTS_Start] run tp ~ ~ ~