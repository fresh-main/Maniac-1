$execute if score $(score) config matches ..$(min_count) run return fail
$scoreboard players remove $(score) config $(scale)
$function maniac:out_game/interaction/config/int/update {score:$(score), min_count:$(min_count), max_count:$(max_count), tag:$(tag)}