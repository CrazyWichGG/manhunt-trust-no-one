# config
## spread players
execute if score spread_players tno.config matches 1 run spreadplayers ~ ~ 50 100 false @a

# gamemode
gamemode survival @a

# runner role assignment
execute as @r run scoreboard players set @s tno.role 1

# other roles full random
execute as @a[scores={tno.role=0}] store result score @s tno.role run random value 1..2

# set game state to pre-started
scoreboard players set $temp tno.state 1

# add effect to players
effect give @a blindness infinite 255 true
effect give @a slowness infinite 255 true
effect give @a mining_fatigue infinite 255 true
effect give @a weakness infinite 255 true
effect give @a regeneration infinite 255 true
