#> villager_to_chest:work/none_recipe_error
#
# 村人に交易内容がない場合の緊急停止用
#
# @within function villager_to_chest:copy

schedule clear villager_to_chest:work/first_chest
execute at @e[type=shulker,tag=VTS_Start] run setblock ~ ~ ~ air
function villager_to_chest:work/reset

tellraw @a[limit=1,sort=nearest] {"text": "[error] この村人には交易内容が存在していません。","color": "red","bold": true}