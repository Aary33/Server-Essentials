scoreboard players set @s tdci_mainhand 0
scoreboard players set @s tdci_offhand 0
execute if data entity @s SelectedItem.tag.TridentCustomItem store result score @s tdci_mainhand run data get entity @s SelectedItem.tag.TridentCustomItem
execute if data entity @s Inventory[{Slot:-106b}].tag.TridentCustomItem store result score @s tdci_offhand run data get entity @s Inventory[{Slot:-106b}].tag.TridentCustomItem
scoreboard players operation @s tdci_held = @s tdci_mainhand
execute if score @s tdci_held matches 0 run scoreboard players operation @s tdci_held = @s tdci_offhand
