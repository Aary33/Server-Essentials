# Player Check
scoreboard players add @a mirror_cooldown 0
execute as @a[scores={mirror_cooldown=1}] at @s if entity @s[nbt={SelectedItem:{tag:{TridentCustomItem:-1496185732,CustomModelData:9797001,display:{Name:"{\"text\":\"Ender Mirror\",\"color\":\"aqua\",\"italic\":false}",Lore:["[{\"text\":\"Gaze into the eye to return home.\",\"color\":\"dark_purple\",\"italic\":false}]"]},Enchantments:[{}]}}}] if score @s mirror_cooldown matches 1 run function server-essentials:magic_mirror/teleport
execute as @a[scores={mirror_cooldown=46}] at @s run playsound minecraft:custom.magic_mirror.use player @a ~ ~ ~ 1 0.800000011920929
execute as @a[scores={mirror_cooldown=1..}] at @s run particle minecraft:end_rod ~ ~1 ~ 0.1 0.1 0.1 0.05 1 normal @a
execute as @a[scores={mirror_cooldown=1..}] at @s run particle minecraft:dragon_breath ~ ~1 ~ 0.5 0.5 0.5 0.1 2 normal @a
execute as @a[scores={mirror_cooldown=1..}] at @s run scoreboard players remove @s mirror_cooldown 1
