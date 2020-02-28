execute store result score @s id.L run data get entity @s UUIDLeast 0.00000000001
execute store result score @s id.M run data get entity @s UUIDMost 0.00000000001
execute if data entity @s Thrower.L store result score @s thrower.L run data get entity @s Thrower.L 0.00000000001
execute if data entity @s Thrower.M store result score @s thrower.M run data get entity @s Thrower.M 0.00000000001
execute if entity @s[type=minecraft:player] store result score #SPAWN-X var run data get entity @s Pos[0]
execute if entity @s[type=minecraft:player] store result score #SPAWN-Y var run data get entity @s Pos[1]
execute if entity @s[type=minecraft:player] store result score #SPAWN-Z var run data get entity @s Pos[2]
