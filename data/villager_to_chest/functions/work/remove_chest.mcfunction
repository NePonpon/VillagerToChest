#> villager_to_chest:work/remove_chest
#
# チェストを削除
#
# @within advancement villager_to_chest:remove_chest

# 設定削除
    execute as @e[tag=VTS_Waiting] at @s unless entity @e[type=shulker,tag=VillagerToChest,distance=..0.2] run setblock ~ ~ ~ air
    execute as @e[tag=VTS_Waiting] at @s unless entity @e[type=shulker,tag=VillagerToChest,distance=..0.2] run kill @s

# 進捗解除
    advancement revoke @s only villager_to_chest:remove_chest