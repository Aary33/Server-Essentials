# Player Check
scoreboard players add @a mirror_cooldown 0
execute as @a at @s if entity @s[scores={mirror_cooldown=1..}] if score @s mirror_cooldown matches 46 run playsound minecraft:custom.magic_mirror.use player @a ~ ~ ~ 5 0.800000011920929
execute as @a at @s if entity @s[scores={mirror_cooldown=1..}] if entity @s[nbt={SelectedItem:{tag:{TridentCustomItem:-1496185732,CustomModelData:9797001,display:{Name:"{\"text\":\"Ender Mirror\",\"color\":\"aqua\",\"italic\":false}",Lore:["[{\"text\":\"Gaze into the eye to return home.\",\"color\":\"dark_purple\",\"italic\":false}]"]},Enchantments:[{}]}}}] if score @s mirror_cooldown matches 1 run function server-essentials:magic_mirror/teleport_home
execute as @a at @s if entity @s[scores={mirror_cooldown=1..}] run particle minecraft:end_rod ~ ~1 ~ 0.1 0.1 0.1 0.05 1 normal @a
execute as @a at @s if entity @s[scores={mirror_cooldown=1..}] run particle minecraft:dragon_breath ~ ~1 ~ 0.5 0.5 0.5 0.1 2 normal @a
execute as @a at @s if entity @s[scores={mirror_cooldown=1..}] run scoreboard players remove @s mirror_cooldown 1
