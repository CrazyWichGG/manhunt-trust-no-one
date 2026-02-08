# night vision
effect give @a night_vision infinite 0 true

# set default role to none
execute as @a unless score @s tno.role = @s tno.role run scoreboard players set @s tno.role 0

# set bossbar for each role
execute if score $temp tno.state matches 2 run bossbar set tno:role.runner visible true
execute if score $temp tno.state matches 2 run bossbar set tno:role.hunter visible true

execute unless score $temp tno.state matches 2 run bossbar set tno:role.runner visible false
execute unless score $temp tno.state matches 2 run bossbar set tno:role.hunter visible false

bossbar set tno:role.runner players @a[scores={tno.role=1}]
bossbar set tno:role.hunter players @a[scores={tno.role=2}]

# player death
execute if score $temp tno.state matches 2 as @a[scores={tno.death=1..}] run function tno:ingame/player_death


# play animation
execute if score $temp tno.state matches 1 run function tno:pre_start/run

# decide winner
execute if score $temp tno.state matches 2 run function tno:ingame/decide_winner