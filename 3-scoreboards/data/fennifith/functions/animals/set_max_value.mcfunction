# initially, set the max value to 0
scoreboard players set $max fennifith.animals_id 0

#       for every pig entity in the game...
#       |               run a scoreboard operation...
#       |               |                                set $max in fennifith.animals_id...
#       |               |                                |                         if the following value is larger...
#       |               |                                |                         | to @s in fennifith.animals_id.
#       |               |                                |                         | |
execute as @e[type=pig] run scoreboard players operation $max fennifith.animals_id > @s fennifith.animals_id

# Tell the player what the max value is
tellraw @s ["The maximum value in the animals_id scoreboard is: ",{"score":{"name":"$max","objective":"fennifith.animals_id"}}]
