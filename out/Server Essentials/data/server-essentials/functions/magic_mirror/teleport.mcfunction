execute if entity @s[gamemode=!creative] run function server-essentials:magic_mirror/damage
effect give @s minecraft:resistance 1 5 true
execute at @s run summon minecraft:firework_rocket ~ ~1 ~ {Tags:["trident-entity.server-essentials.blast"],CustomName:"[\"\",\"Teleport Blast\"]",LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:1b,Explosions:[{Type:0b,Flicker:0b,Trail:0b,Colors:[I;12156866],FadeColors:[I;1780496]}]}}}}
function server-essentials:magic_mirror/store_in_player
function server-essentials:magic_mirror/create_marker
execute as @e[tag=dummy,tag=marker,limit=1,sort=nearest,distance=0..0.1] at @s as @a if score @s id.L = @e[tag=dummy,tag=marker,limit=1,sort=nearest,distance=0..0.1] owner.L if score @s id.M = @e[tag=dummy,tag=marker,limit=1,sort=nearest,distance=0..0.1] owner.M run function server-essentials:magic_mirror/store_in_marker
execute as @e[tag=dummy,tag=marker,limit=1,sort=nearest,distance=0..0.1] at @s run function server-essentials:magic_mirror/teleport_marker
execute at @s unless block ~ ~1 ~ minecraft:air run spreadplayers ~ ~ 0 5 false @s
execute at @s unless block ~ ~1 ~ minecraft:air run tp @s ~ 256.0 ~
execute at @s run summon minecraft:firework_rocket ~ ~1 ~ {Tags:["trident-entity.server-essentials.blast"],CustomName:"[\"\",\"Teleport Blast\"]",LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:1b,Explosions:[{Type:0b,Flicker:0b,Trail:0b,Colors:[I;12156866],FadeColors:[I;1780496]}]}}}}
