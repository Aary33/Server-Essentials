# Summon marker
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"[\"\",\"Teleport Marker\"]",Duration:200,Tags:["trident-entity.server-essentials.marker","dummy","marker"]}
tp @e[tag=dummy,tag=marker,limit=1,sort=nearest,distance=0..0.1] @s
# Set Owner
scoreboard players operation @e[tag=dummy,tag=marker,limit=1,sort=nearest,distance=0..0.1] owner.L = @s id.L
scoreboard players operation @e[tag=dummy,tag=marker,limit=1,sort=nearest,distance=0..0.1] owner.M = @s id.M
tag @s add owner
