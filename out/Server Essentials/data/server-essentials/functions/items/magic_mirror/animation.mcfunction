# Player Check
scoreboard players add @a 97-mirr_cooldwn 0
scoreboard players add @a 97-mirr_dmg 0
# Set global spawn
execute as @a[scores={97-age=1}] run function server-essentials:items/magic_mirror/set_global_spawn
# Run animation
execute as @a[scores={97-mirr_cooldwn=1}] at @s if entity @s[nbt={SelectedItem:{tag:{TridentCustomItem:-1496185732,CustomModelData:9797001,display:{Name:"{\"text\":\"Ender Mirror\",\"color\":\"yellow\",\"italic\":false}",Lore:["[{\"text\":\"Gaze into the eye to return home.\",\"color\":\"dark_purple\",\"italic\":false}]"]}}}}] if score @s 97-mirr_cooldwn matches 1 run function server-essentials:items/magic_mirror/teleport
execute as @a[scores={97-mirr_cooldwn=46}] at @s run playsound minecraft:custom.magic_mirror.use player @a ~ ~ ~ 1 0.800000011920929
execute as @a[scores={97-mirr_cooldwn=1..}] at @s run particle minecraft:end_rod ~ ~1 ~ 0.1 0.1 0.1 0.05 1 normal @a
execute as @a[scores={97-mirr_cooldwn=1..}] at @s run particle minecraft:dragon_breath ~ ~1 ~ 0.5 0.5 0.5 0.1 2 normal @a
execute as @a[scores={97-mirr_cooldwn=1..}] at @s run scoreboard players remove @s 97-mirr_cooldwn 1
