kill @e[limit=1,sort=nearest,distance=0,nbt={Item:{id:"minecraft:ender_eye",Count:1b}}]
summon minecraft:item ~ ~ ~ {Motion:[0.0,0.5,0.0],PickupDelay:40s,PortalCooldown:300,Item:{tag:{TridentCustomItem:-1496185732,CustomModelData:9797001,display:{Name:"{\"text\":\"Ender Mirror\",\"color\":\"yellow\",\"italic\":false}",Lore:["[{\"text\":\"Gaze into the eye to return home.\",\"color\":\"dark_purple\",\"italic\":false}]"]}},id:"minecraft:carrot_on_a_stick",Count:1b}}
playsound minecraft:item.trident.thunder player @a ~ ~ ~ 1 1.899999976158142
particle minecraft:totem_of_undying ~ ~1 ~ 0.2 0.5 0.2 0 10 normal @a
# Target owner
execute as @s at @s as @a if score @s 97-id.L = @e[limit=1,sort=nearest,distance=0..0.1,type=!minecraft:player] 97-thrower.L if score @s 97-id.M = @e[limit=1,sort=nearest,distance=0..0.1,type=!minecraft:player] 97-thrower.M run advancement grant @s until server-essentials:magic/symbiosis/craft_with_symbiosis
kill @s
