execute if score @s 97-xp.half.pts matches 100.. run summon minecraft:experience_orb ~ ~1 ~ {Tags:["trident-entity.server-essentials.xp_orb","random"],Age:0s,Value:50s,Motion:[0.0d,0.0d,0.0d,0.5d,0.4d,-0.5d]}
execute if score @s 97-xp.half.pts matches 100.. run summon minecraft:experience_orb ~ ~1 ~ {Tags:["trident-entity.server-essentials.xp_orb","random"],Age:0s,Value:50s,Motion:[0.0d,0.0d,0.0d,-0.5d,0.4d,0.5d]}
execute if score @s 97-xp.half.pts matches 100.. run scoreboard players remove @s 97-xp.half.pts 100
execute if score @s 97-xp.half.pts matches 100.. run xp add @s -100 points
execute if score @s 97-xp.half.pts matches 10..99 run summon minecraft:experience_orb ~ ~1 ~ {Tags:["trident-entity.server-essentials.xp_orb","random"],Age:0s,Value:25s,Motion:[0.0d,0.0d,0.0d,-0.5d,0.5d,-0.5d]}
execute if score @s 97-xp.half.pts matches 10..99 run scoreboard players remove @s 97-xp.half.pts 10
execute if score @s 97-xp.half.pts matches 10..99 run xp add @s -10 points
execute if score @s 97-xp.half.pts matches 1..9 run summon minecraft:experience_orb ~ ~1 ~ {Tags:["trident-entity.server-essentials.xp_orb","random"],Age:0s,Value:1s,Motion:[0.0d,0.0d,0.0d,0.5d,0.6d,0.5d]}
execute if score @s 97-xp.half.pts matches 1..9 run scoreboard players remove @s 97-xp.half.pts 1
execute if score @s 97-xp.half.pts matches 1..9 run xp add @s -1 points
execute unless score @s 97-xp.half.pts matches ..0 run function server-essentials:addons/experience_loss/on_tick/death_trigger/remove_xp
