#> villager_to_chest:set_chest
# チェストを複数個設置する
#　アイテムを設定できるようにする
#
# @within function villager_to_chest:save_villager

data modify entity @e[tag=Waiting,limit=1] Tags set value ["VillagerToChest","InputChest"]

#execute if score チェストの数 VillagerToChest matches 1.. as @e[tag=Start] at @e[tag=InputChest] positioned ~ 0 ~-1 if entity @e[dy=255] as @e[tag=InputChest] at @s run tag @s add right
#execute if score チェストの数 VillagerToChest matches 1.. as @e[tag=Start] at @e[tag=InputChest] positioned ~ 0 ~-1 unless entity @e[dy=255] as @e[tag=InputChest] run tag @s add up

execute if score チェストの数 VillagerToChest matches 1.. as @e[tag=Start] at @s align xyz if entity @e[tag=InputChest,dx=0,dy=255,dz=0] run tag @s add right
execute if score チェストの数 VillagerToChest matches 1.. as @e[tag=Start] at @s align xyz unless entity @e[tag=InputChest,dx=0,dy=255,dz=0] run tag @s add up

execute as @e[tag=right] at @s run tp ~ ~ ~-1
execute as @e[tag=up] at @s run tp ~ ~1 ~1

execute as @e[tag=right] at @s run setblock ~ ~ ~ chest[facing=east,type=left]
execute as @e[tag=up] at @s run setblock ~ ~ ~ chest[facing=east,type=right]

scoreboard players remove チェストの数 VillagerToChest 1

tag @e[tag=right] remove right
tag @e[tag=up] remove up

execute if score チェストの数 VillagerToChest matches 1.. run function villager_to_chest:set_chest

execute as @e[tag=InputChest] at @e[tag=Start] run tp ~ ~ ~