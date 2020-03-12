scoreboard players set @s 97-xp.half.pts 0
scoreboard players operation @s 97-xp.half.pts = @s 97-xp.pts
scoreboard players operation @s 97-xp.half.pts /= #2 trident_const
execute as @s at @s run function server-essentials:addons/experience_loss/on_tick/death_trigger/summon_orbs
execute store result score @s 97-xp.lvl run xp query @s levels
scoreboard players set @s 97-xp.half.lvl 0
scoreboard players operation @s 97-xp.half.lvl = @s 97-xp.lvl
scoreboard players operation @s 97-xp.half.lvl /= #2 trident_const
execute as @s at @s run function server-essentials:addons/experience_loss/on_tick/death_trigger/remove_levels
scoreboard players set @s 97-death_trigger 0
