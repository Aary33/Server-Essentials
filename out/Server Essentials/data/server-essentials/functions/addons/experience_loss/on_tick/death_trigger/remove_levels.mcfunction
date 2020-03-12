xp add @s -1 levels
scoreboard players remove @s 97-xp.half.lvl 1
execute unless score @s 97-xp.half.lvl matches ..0 run function server-essentials:addons/experience_loss/on_tick/death_trigger/remove_levels
