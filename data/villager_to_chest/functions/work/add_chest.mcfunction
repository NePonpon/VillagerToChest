#> villager_to_chest:work/add_chest
#
# チェストを設置する。
#
# @within advancement villager_to_chest:add_chest


# 複数設定できないようにする
    execute store result score #SettingChest_Count VillagerToChest if entity @e[type=armor_stand,tag=VillagerToChest]
    execute if score #SettingChest_Count VillagerToChest matches 2.. as @e[tag=VTS_SettingChest] run tellraw @p [{"text": "設定できるチェストは1つまでです！","color": "green","bold": true}]
    execute if score #SettingChest_Count VillagerToChest matches 2.. run kill @e[tag=VTS_SettingChest]

# チェスト設定
    execute as @e[tag=VTS_SettingChest] at @s run summon shulker ~ ~ ~ {NoAI:true,ActiveEffects:[{Id:14b,ShowParticles:false,Duration:2147483647}],Tags:["VillagerToChest","VTS_Start"],Glowing:true,Health:0.01f}
    execute as @e[tag=VTS_SettingChest] at @s run setblock ~ ~ ~ chest[facing=east,type=right]
    execute as @e[tag=VTS_SettingChest] at @s run data modify entity @s Tags set value ["VillagerToChest","VTS_Waiting"]

# 進捗解除
    advancement revoke @s only villager_to_chest:add_chest