function minecraft:trident/prepare_held_items
execute if entity @s[scores={uitem.3649cc34=1..,oldtdci_held=-1496185732}] run function server-essentials:magic_mirror/use
scoreboard players reset @s[scores={uitem.3649cc34=1..}] uitem.3649cc34
function minecraft:trident/save_held_items
