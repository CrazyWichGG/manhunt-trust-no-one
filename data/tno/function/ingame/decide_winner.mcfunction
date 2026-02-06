execute as @a[predicate=tno:in_the_end,limit=1] run scoreboard players add $temp tno.end_load_time 1

## runner win
execute in minecraft:the_end as @a[predicate=tno:in_the_end] unless entity @e[type=ender_dragon] if score $temp tno.end_load_time matches 100.. run function tno:decide_winner/runner
## hunter win
execute unless entity @a[scores={tno.role=1},tag=!tno.dead] run function tno:decide_winner/hunter