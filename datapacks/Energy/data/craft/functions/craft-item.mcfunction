#scores
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:string",Count:5b}}] Craft 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:book",Count:1b}}] Craft 2

#craft
execute at @e[scores={Craft=1}] at @e[scores={Craft=2},distance=..1] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:book",Count:1b,tag:{display:{Name:"{\"text\":\"Plan du Magasin\",\"color\":\"blue\"}"}}}}
execute at @e[scores={Craft=1}] at @e[scores={Craft=2},distance=..1] run particle minecraft:smoke ~ ~ ~ 0.1 0.1 0.1 0.001 1 force
execute at @e[scores={Craft=1}] at @e[scores={Craft=2},distance=..1] run kill @e[scores={Craft=1..2}]
