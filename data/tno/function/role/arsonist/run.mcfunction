scoreboard objectives add tno.role.arsonist dummy

# set default value
execute unless score $cooldown tno.role.arsonist = $cooldown tno.role.arsonist run scoreboard players operation $cooldown tno.role.arsonist = arsonist_cooldown tno.config
scoreboard players set $second_divider tno.role.arsonist 20
scoreboard players set $minute_divider tno.role.arsonist 60

# copy cooldown value

## second value
scoreboard players operation $second tno.role.arsonist = $cooldown tno.role.arsonist
scoreboard players operation $second tno.role.arsonist /= $second_divider tno.role.arsonist
scoreboard players operation $second tno.role.arsonist %= $minute_divider tno.role.arsonist

## minute value
scoreboard players operation $minute tno.role.arsonist = $cooldown tno.role.arsonist
scoreboard players operation $minute tno.role.arsonist /= $second_divider tno.role.arsonist
scoreboard players operation $minute tno.role.arsonist /= $minute_divider tno.role.arsonist

# check if arsonist can use ability
execute if score $cooldown tno.role.arsonist matches 1.. run title @a[scores={tno.role=3}] actionbar [{"text":"Arsonist Cooldown: ","color":"gold"},{"score":{"name":"$minute","objective":"tno.role.arsonist"},"color":"yellow"},{"text":"m ","color":"yellow"},{"score":{"name":"$second","objective":"tno.role.arsonist"},"color":"yellow"},{"text":"s","color":"yellow"}]
execute if score $cooldown tno.role.arsonist matches 0 run title @a[scores={tno.role=3}] actionbar [{"text":"Get close and sneak near a player to douse them with gasoline!","color":"gold"}]

# douse players
execute if score $cooldown tno.role.arsonist matches 0 as @a[scores={tno.role=3}] at @s if predicate tno:is_sneaking as @a[scores={tno.role=1..2},distance=..2,tag=!tno.arsonist.doused,gamemode=!spectator] run function tno:role/arsonist/douse

# trigger win
execute if score $cooldown tno.role.arsonist matches 0 unless entity @a[scores={tno.role=1..2},tag=!tno.arsonist.doused,gamemode=!spectator] run title @a[scores={tno.role=3}] actionbar [{"text":"IGNITE YOURSELF TO WIN THE GAME!","color":"gold"}]
execute if score $cooldown tno.role.arsonist matches 0 unless entity @a[scores={tno.role=1..2},tag=!tno.arsonist.doused,gamemode=!spectator] as @a[scores={tno.role=3}] at @s if block ~ ~ ~ #tno:is_burn run return run function tno:decide_winner/arsonist

# decrease cooldown
execute if score $cooldown tno.role.arsonist matches 1.. run scoreboard players remove $cooldown tno.role.arsonist 1

# particle on doused players
execute as @a[scores={tno.role=1..2},tag=tno.arsonist.doused,gamemode=!spectator] at @s run particle minecraft:dust{color:[1.0,0.5,0.0],scale:1.0} ~ ~.5 ~ .3 .5 .3 1 5 force @a[scores={tno.role=3}]
