playsound minecraft:block.glass.break player @a ~ ~ ~ 5 1.100000023841858
replaceitem entity @s weapon.mainhand minecraft:air
advancement grant @s until server-essentials:magic/symbiosis/break_magic_mirror
loot give @s loot server-essentials:custom/mirror_loop_chance
