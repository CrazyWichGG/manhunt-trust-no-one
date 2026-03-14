# add doused tag to player
tag @s add tno.arsonist.doused

# send message to arsonist
tellraw @p[scores={tno.role=3}] [{"text":"You doused ","color":"gold"},{"selector":"@s","color":"yellow"},{"text":" with gasoline!","color":"gold"}]

# playsound
playsound minecraft:block.brewing_stand.brew master @p[scores={tno.role=3},distance=3] ~ ~ ~ 1 1 1

# reset cooldown
scoreboard players operation $cooldown tno.role.arsonist = arsonist_cooldown tno.config