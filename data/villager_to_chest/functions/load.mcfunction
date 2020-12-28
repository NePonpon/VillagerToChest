#> villager_to_chest:load
#
# @within tag/function minecraft:load

scoreboard objectives add VillagerToChest dummy
execute unless score #3 VillagerToChest matches 3 run function villager_to_chest:load_once