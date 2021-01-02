#> villager_to_chest:work/load_once
#
# 初回設定
#
# @within function villager_to_chest:work/load

# スコア設定
    scoreboard players set #-1 VillagerToChest -1
    scoreboard players set #3 VillagerToChest 3
    scoreboard players set #9 VillagerToChest 9
    scoreboard players set #27 VillagerToChest 27

    #scoreboard objectives setdisplay sidebar VillagerToChest

data merge storage villager_to_chest: {Slot:[{Slot:0b},{Slot:1b},{Slot:2b},{Slot:3b},{Slot:4b},{Slot:5b},{Slot:6b},{Slot:7b},{Slot:8b},{Slot:9b},{Slot:10b},{Slot:11b},{Slot:12b},{Slot:13b},{Slot:14b},{Slot:15b},{Slot:16b},{Slot:17b},{Slot:18b},{Slot:19b},{Slot:20b},{Slot:21b},{Slot:22b},{Slot:23b},{Slot:24b},{Slot:25b},{Slot:26b},{Slot:27b}]}