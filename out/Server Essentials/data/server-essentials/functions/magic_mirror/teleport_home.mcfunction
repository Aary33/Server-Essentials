effect give @s minecraft:resistance 1 5 true
summon minecraft:firework_rocket ~ ~1 ~ {Tags:["trident-entity.server-essentials.blast"],CustomName:"[\"\",\"Teleport Blast\"]",LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:1b,Explosions:[{Type:0b,Flicker:0b,Trail:0b,Colors:[I;12156866],FadeColors:[I;1780496]}]}}}}
summon minecraft:armor_stand ~ ~ ~ {CustomName:"[\"\",\"Home\"]",Small:0b,ShowArms:0b,Invisible:1b,NoGravity:1b,Marker:1b,Glowing:0b,DisabledSlots:2039583,Tags:["trident-entity.server-essentials.home","dummy","home","new"],Health:20.0f,Attributes:[{Name:"generic.maxHealth",Base:20.0d}]}
tp @e[tag=dummy,tag=home,tag=new,limit=1,sort=nearest] @s
execute in minecraft:overworld run forceload add -1 -1 1 1
execute in minecraft:overworld run tp @e[tag=dummy,tag=home,tag=new,limit=1,sort=nearest] 0.5 0.0 0.5
execute store result entity @e[tag=dummy,tag=home,tag=new,limit=1,sort=nearest] Pos[0] double 1 run data get entity @s SpawnX
execute store result entity @e[tag=dummy,tag=home,tag=new,limit=1,sort=nearest] Pos[1] double 1 run data get entity @s SpawnY
execute store result entity @e[tag=dummy,tag=home,tag=new,limit=1,sort=nearest] Pos[2] double 1 run data get entity @s SpawnZ
execute in minecraft:overworld at @e[tag=dummy,tag=home,tag=new,limit=1,sort=nearest] run tp @e[tag=dummy,tag=home,tag=new,limit=1,sort=nearest] ~0.5 ~ ~0.5
execute in minecraft:overworld at @e[tag=dummy,tag=home,tag=new,limit=1,sort=nearest] run forceload add ~-1 ~-1 ~1 ~1
execute in minecraft:overworld at @e[tag=dummy,tag=home,tag=new,limit=1,sort=nearest] run scoreboard players set @s tp_limit 256
execute in minecraft:overworld at @e[tag=dummy,tag=home,tag=new,limit=1,sort=nearest] positioned ~ 256.0 ~ run function server-essentials:magic_mirror/y_check
execute in minecraft:overworld at @e[tag=dummy,tag=home,tag=new,limit=1,sort=nearest] run spreadplayers ~ ~ 0 5 false @s
execute in minecraft:overworld at @e[tag=dummy,tag=home,tag=new,limit=1,sort=nearest] if block ~ ~1 ~ minecraft:air if block ~ ~ ~ #minecraft:beds run tp @s @e[tag=dummy,tag=home,tag=new,limit=1,sort=nearest]
playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 5 0.8999999761581421 1
execute if entity @s[gamemode=!creative] run function server-essentials:magic_mirror/damage
execute as @s at @s run summon minecraft:firework_rocket ~ ~1 ~ {Tags:["trident-entity.server-essentials.blast"],CustomName:"[\"\",\"Teleport Blast\"]",LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:1b,Explosions:[{Type:0b,Flicker:0b,Trail:0b,Colors:[I;12156866],FadeColors:[I;1780496]}]}}}}
execute in minecraft:overworld at @e[tag=dummy,tag=home,tag=new,limit=1,sort=nearest] run forceload remove ~-1 ~-1 ~1 ~1
execute in minecraft:overworld run forceload remove -1 -1 1 1
kill @e[tag=dummy,tag=home,tag=new,limit=1,sort=nearest]
