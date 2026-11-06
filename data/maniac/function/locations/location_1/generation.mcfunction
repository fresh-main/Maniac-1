## Генерация Предметов
# Очистка старых предметов
 kill @e[tag=Item_interact]
 kill @e[tag=Item]
#Генерация ключа от охраны
 data modify storage efm Pos set value [["8 9 -164"],["-37 9 -151"],["-24 17 -176"],["-1 -16 -186"],["-11 9 -129"],["-29 10 -63"],["-52 8 -130"],["-34 8 -113"],["-24 10 -186"],["-18 12 -192"]]
 item replace block -154 -63 -2 container.0 with tripwire_hook[item_name='[{"text":"Ключ от ","color":"gray"},{"color":"blue","text":"охраны"}]',item_model="kluch_1",custom_data={key: "ключ от охраны",useCount:1}]
 function maniac:in_game/item_spawn/iterating
#Генерация изоленты
 data modify storage efm Pos set value [["-170 10 3"],["-166 10 3"],["-140 10 -12"],["-142 10 -10"]]
 item replace block -154 -63 -2 container.0 with heart_of_the_sea[item_name='{"color":"aqua","text":"Изолента"}',custom_data={item: "изолента"},item_model="izolenta"]
 function maniac:in_game/item_spawn/iterating
#Генерация ключей от подвала, кабинета №1, кабинета №2, генераторной в на 2 этаже
 data modify storage efm Pos set value [["-127 3 12","-130 2 13","-128 2 12","-132 2 13","-126 1 16","-132 3 12","-126 2 13"],["-137 2 23","-133 3 22","-132 2 23","-142 2 25","-137 3 25","-134 2 22","-145 3 26"],["-164 2 3","-161 2 7","-171 1 9","-161 1 3","-163 2 3","-164 2 9","-161 2 5","-167 2 3"],["-158 3 -5","-160 2 -9","-165 2 -13","-164 2 -8","-170 2 -5","-160 2 -8","-168 2 -9","-157 2 -7"]]
 item replace block -154 -63 -2 container.1 with tripwire_hook[item_name='[{"text":"Ключ от ","color":"gray"},{"color":"gray","text":"кабинета №1"}]',item_model="kluch_2",custom_data={key: "ключ от кабинета №1",useCount:1}]
 item replace block -154 -63 -2 container.2 with tripwire_hook[item_name='[{"text":"Ключ от ","color":"gray"},{"color":"dark_gray","text":"кабинета №2"}]',item_model="kluch_3",custom_data={key: "ключ от кабинета №2",useCount:1}]
 item replace block -154 -63 -2 container.3 with tripwire_hook[item_name='[{"text":"Ключ от ","color":"gray"},{"color":"green","text":"генераторной на 2 этаже"}]',item_model="kluch_5",custom_data={key: "ключ от генераторной на 2 этаже",useCount:1}]
 function maniac:in_game/item_spawn/iterating
#Генерация ключе от комнаты управления и электрощитовой
 data modify storage efm Pos set value [["-157 13 1","-157 10 3","-151 12 1","-151 12 5"],["-141 11 14","-141 11 21","-145 11 21","-145 11 14"],["-140 12 10","-143 11 9","-144 12 7","-140 10 11"]]
 item replace block -154 -63 -2 container.1 with tripwire_hook[item_name='[{"text":"Ключ от ","color":"gray"},{"color":"yellow","text":"электрощитовой"}]',item_model="kluch_14",custom_data={key: "ключ от электрощитовой",useCount:1}]
 function maniac:in_game/item_spawn/iterating
#Генерация топлива
 data modify storage efm Pos set value [["-59 8 -150"],["-35 8 -72"],["-13 8 -79"],["22 9 -53"],["18 8 -73"],["45 8 -111"],["30 8 -116"],["42 8 -133"],["19 8 -146"],["3 8 -126"],["-23 8 -123"],["-35 8 -99"],["-56 8 -108"],["-37 9 -129"],["-33 8 -133"],["-54 9 -139"],["-57 9 -140"],["-62 9 -160"],["-40 8 -182"],["-29 8 -176"],["-11 8 -152"],["-20 9 -183"],["-25 9 -180"],["4 8 -160"],["5 8 -150"]]
 item replace block -154 -63 -2 container.0 with potion[custom_name='{"text":"Топливо (1л.)","color":"yellow","italic":false}',potion_contents={potion:"water"},item_model="kanistra"]
 item replace block -154 -63 -2 container.1 with potion[custom_name='{"text":"Топливо (1л.)","color":"yellow","italic":false}',potion_contents={potion:"water"},item_model="kanistra"]
 item replace block -154 -63 -2 container.2 with potion[custom_name='{"text":"Топливо (1л.)","color":"yellow","italic":false}',potion_contents={potion:"water"},item_model="kanistra"]
 item replace block -154 -63 -2 container.3 with potion[custom_name='{"text":"Топливо (1л.)","color":"yellow","italic":false}',potion_contents={potion:"water"},item_model="kanistra"]
 item replace block -154 -63 -2 container.4 with potion[custom_name='{"text":"Топливо (1л.)","color":"yellow","italic":false}',potion_contents={potion:"water"},item_model="kanistra"]
 item replace block -154 -63 -2 container.5 with potion[custom_name='{"text":"Топливо (1л.)","color":"yellow","italic":false}',potion_contents={potion:"water"},item_model="kanistra"]
 function maniac:in_game/item_spawn/iterating
#Генерация болтореза и отвёртки
 data modify storage efm Pos set value [["20 9 -50","24 9 -49","21 10 -46"]]
 item replace block -154 -63 -2 container.0 with iron_nugget[item_name='{"color":"blue","text":"Отвёртка"}',custom_data={item: "отвёртка"},item_model="otvertka"]
 function maniac:in_game/item_spawn/iterating
#Генерация монтировки для двери
 data modify storage efm Pos set value [["-33 17 -62"]]
 item replace block -154 -63 -2 container.0 with tripwire_hook[item_name='{"color":"gold","text":"Монтировка","italic":false}',item_model="kluch_16",custom_data={key:"монтировка",useCount:1},attribute_modifiers={show_in_tooltip:false,modifiers:[{amount:1,id:"maniac:crowbar_damage",operation:"add_value",type:"minecraft:attack_damage",slot:"mainhand"}]}]
 function maniac:in_game/item_spawn/iterating
#Генерация телефона
 data modify storage efm Pos set value ["-130 11 22 rotated 180 0","-132 11 25 rotated 90 0","-167 11 13 rotated 0 0","-167 11 13 rotated 0 0"]
 function maniac:in_game/place_spawn/random_pos
#Генерация ключей от генераторной в подвале, кабинета дирректора, кабинета секретаря, кухни
 data modify storage efm Pos set value [["-148 21 -10","-138 21 -6","-138 19 -8"],["-130 19 18","-130 21 15","-138 19 9"],["-135 19 29","-135 19 28","-132 20 25","-126 19 25"],["-167 19 -14","-162 19 -14"],["-165 20 -5","-163 19 -6"],["-155 20 1","-150 20 1","-151 19 9"],["-152 19 27","-150 20 23","-151 20 23"],["-139 19 32","-137 19 28"],["-169 19 -3","-169 19 -5"]]
 item replace block -154 -63 -2 container.0 with tripwire_hook[item_name='[{"text":"Ключ от ","color":"gray"},{"color":"dark_green","text":"генераторной в подвале"}]',item_model="kluch_6",custom_data={key: "ключ от генераторной в подвале",useCount:1}]
 item replace block -154 -63 -2 container.1 with tripwire_hook[item_name='[{"text":"Ключ от ","color":"gray"},{"color":"dark_purple","text":"кабинета директора"}]',item_model="kluch_11",custom_data={key: "ключ от кабинета директора",useCount:1}]
 item replace block -154 -63 -2 container.2 with tripwire_hook[item_name='[{"text":"Ключ от ","color":"gray"},{"color":"light_purple","text":"кабинета секретаря"}]',item_model="kluch_9",custom_data={key: "ключ от кабинета секретаря",useCount:1}]
 item replace block -154 -63 -2 container.3 with tripwire_hook[item_name='[{"text":"Ключ от ","color":"gray"},{"color":"#CD6864","text":"кухни"}]',item_model="kluch_10",custom_data={key: "ключ от кухни",useCount:3}]
 function maniac:in_game/item_spawn/iterating
#Генерация ключа от библиотеки
 #добавить ещё точек(проверяйте, чтобы точки не совпадали!!!)!!!!!
 data modify storage efm Pos set value [["-171 20 -10","-155 20 8"],["-155 20 11","-134 21 -1"],["-126 19 11"]]
 item replace block -154 -63 -2 container.0 with tripwire_hook[item_name='[{"text":"Ключ от ","color":"gray"},{"color":"#b6520f","text":"библиотеки"}]',item_model="kluch_15",custom_data={key: "ключ от библиотеки",useCount:1}]
 function maniac:in_game/item_spawn/iterating
#Генерация аптечек
 data modify storage efm Pos set value [["-36 16 -82"],["-32 16 -82"],["-32 9 -83"],["-33 10 -107"],["-29 11 -103"],["-5 16 -102"],["-53 8 -87"],["-13 17 -69"],["24 10 -47"],["22 10 -51"],["40 11 -142"],["39 11 -148"],["23 11 -139"],["8 10 -166"],["-22 11 -189"],["-1 17 -191"],["-58 10 -154"],["-61 16 -159"],["-33 9 -144"],["-36 16 -143"],["-54 9 -132"],["-58 16 -139"],["-34 10 -127"],["-35 16 -127"],["-59 10 -134"]]
 execute store result score temp global_data if entity @a[team=peaceful]
 execute store result storage efm temp byte 1 run scoreboard players operation temp global_data *= medkits_per_player config
 execute if score temp global_data > max_medkits config store result storage efm temp byte 1 run scoreboard players operation temp global_data = max_medkits config
 function maniac:in_game/generation/medkit with storage efm
 function maniac:in_game/item_spawn/iterating
#Генерация ключа от охраны и большой аптечки
 item replace block -154 -63 -2 container.1 with book[item_name='{"color":"red","text":"Аптечка"}', consumable={animation:"eat",consume_seconds:7.0f,has_consume_particles:false,sound:{range:0f,sound_id:"minecraft:entity.generic.eat"}}, item_model="medicaments"]
 item replace block -154 -63 -2 container.2 with book[item_name='{"color":"red","text":"Аптечка"}', consumable={animation:"eat",consume_seconds:7.0f,has_consume_particles:false,sound:{range:0f,sound_id:"minecraft:entity.generic.eat"}}, item_model="medicaments"]
 item replace block -154 -63 -2 container.3 with book[item_name='{"color":"red","text":"Аптечка"}', consumable={animation:"eat",consume_seconds:7.0f,has_consume_particles:false,sound:{range:0f,sound_id:"minecraft:entity.generic.eat"}}, item_model="medicaments"]
 execute positioned -123 11 13 run function maniac:in_game/item_spawn/summon
 execute positioned -146 20 23 run function maniac:in_game/item_spawn/summon
 execute positioned -3 18 -52 run function maniac:in_game/item_spawn/summon
 execute positioned -4 18 -63 run function maniac:in_game/item_spawn/summon
#Генерация ключа от мастерской
 data modify storage efm Pos set value [["27 8 -128","-28 8 -115","35 8 -122","-25 8 -147"],["21 8 -108","-11 8 -113","-48 8 -62"],["-3 9 -129","19 8 -144","15 8 -162","-47 8 -181"]]
 item replace block -154 -63 -2 container.0 with tripwire_hook[item_name='[{"text":"Ключ от ","color":"gray"},{"color":"#FFA500","text":"мастерской"}]',item_model="kluch_17",custom_data={key: "ключ от мастерской",useCount:1}]
 function maniac:in_game/item_spawn/iterating
#Генерация ключей от домиков вожатых
 data modify storage efm Pos set value [["-22 8 -10","-64 8 -147","-32 8 -181"],["2 8 -146","-19 8 -149","-8 10 -177"],["1 7 -83","-2 8 -77","-25 9 -172","-25 11 -183"],["-3 17 -181","37 10 -138"],["37 8 -84","17 8 -65"],["-61 9 -68","-43 8 -57","-25 17 -182"],["0 10 -169","-30 8 -138","52 8 -161"]]
 item replace block -154 -63 -2 container.0 with tripwire_hook[item_name='[{"text":"Ключ от ","color":"gray"},{"color":"green","text":"вожатской"}]',item_model="kluch_18",custom_data={key: "ключ от вожатской",useCount:1}]
 item replace block -154 -63 -2 container.1 with tripwire_hook[item_name='[{"text":"Ключ от ","color":"gray"},{"color":"green","text":"вожатской"}]',item_model="kluch_18",custom_data={key: "ключ от вожатской",useCount:1}]
 item replace block -154 -63 -2 container.2 with tripwire_hook[item_name='[{"text":"Ключ от ","color":"gray"},{"color":"green","text":"вожатской"}]',item_model="kluch_18",custom_data={key: "ключ от вожатской",useCount:1}]
 item replace block -154 -63 -2 container.3 with tripwire_hook[item_name='[{"text":"Ключ от ","color":"gray"},{"color":"green","text":"вожатской"}]',item_model="kluch_18",custom_data={key: "ключ от вожатской",useCount:1}]
 item replace block -154 -63 -2 container.4 with tripwire_hook[item_name='[{"text":"Ключ от ","color":"gray"},{"color":"green","text":"вожатской"}]',item_model="kluch_18",custom_data={key: "ключ от вожатской",useCount:1}]
 function maniac:in_game/item_spawn/iterating
#Генерация ключа от вышки
 data modify storage efm Pos set value [["-3 18 -68","-6 18 -69","-5 17 -66"],["-33 18 -67","-35 17 -69"]]
 item replace block -154 -63 -2 container.0 with tripwire_hook[item_name='[{"text":"Ключ от ","color":"gray"},{"color":"gold","text":"вышки"}]',item_model="kluch_19",custom_data={key: "ключ от вышки",useCount:1}]
 function maniac:in_game/item_spawn/iterating
#Генерация батареек для рации
 data modify storage efm Pos set value [["-7 10 -62","-10 10 -57","-1 10 -57"]]
 item replace block -154 -63 -2 container.0 with redstone[item_name='{"color":"red","text":"Батарейка"}',custom_data={item:"батарейка"},item_model="battery"]


 function maniac:in_game/item_spawn/iterating
#генерация ключа от кабинета директора
  item replace block -154 -63 -2 container.0 with tripwire_hook[item_name='[{"text":"Ключ от ","color":"gray"},{"color":"dark_purple","text":"кабинета директора"}]',item_model="kluch_11",custom_data={key: "ключ от кабинета директора",useCount:1}]
  execute positioned -51 10 -184 run function maniac:in_game/item_spawn/summon
#генерация ключей в вожатских
  data modify storage efm Pos set value [["-64 9 -101"],["-66 9 -99"],["-64 9 -89"],["-66 9 -87"],["-64 9 -83"]]
  item replace block -154 -63 -2 container.0 with redstone[item_name='{"color":"red","text":"Батарейка"}',custom_data={item:"батарейка"},item_model="battery"]
  item replace block -154 -63 -2 container.1 with tripwire_hook[item_name='[{"text":"Ключ от ","color":"gray"},{"color":"red","text":"медпункта"}]',item_model="kluch_4",custom_data={key: "ключ от медпункта",useCount:2}]
  function maniac:in_game/item_spawn/iterating
#генерация ключей в главном здании
  data modify storage efm Pos set value [["-1 17 -176","-11 17 -187"],["-20 16 -192","-15 16 -189"]]
  item replace block -154 -63 -2 container.0 with redstone[item_name='{"color":"red","text":"Батарейка"}',custom_data={item:"батарейка"},item_model="battery"]
  item replace block -154 -63 -2 container.1 with tripwire_hook[item_name='[{"text":"Ключ от ","color":"gray"},{"color":"yellow","text":"электрощитовой"}]',item_model="kluch_14",custom_data={key: "ключ от электрощитовой",useCount:1}]
  function maniac:in_game/item_spawn/iterating

# Радиостанция для нового побега
function maniac:objects/radio/spawn

# Детали мотора: общий генератор предметов использует storage efm Pos
data modify storage efm Pos set value [["-18 9 -183"],["-1 16 -201"],["-8 8 -162"],["36 8 -160"],["43 10 -164"],["19 9 -181"],["8 11 -175"],["9 10 -166"],["44 8 -123"],["-18 9 -68"],["-29 18 -52"],["-34 18 -57"],["-35 17 -65"],["-7 17 -70"],["-1 10 -69"]]
item replace block -154 -63 -2 container.0 with iron_ingot[item_name='{"text":"Корпус мотора","color":"gold","italic":false}',item_model="motor_body",custom_data={motor_part:"body"}]

item replace block -154 -63 -2 container.1 with iron_ingot[item_name='{"text":"Деталь мотора 1","color":"gold","italic":false}',item_model="motor_part_1",custom_data={motor_part:"part_1"}]

item replace block -154 -63 -2 container.2 with iron_ingot[item_name='{"text":"Деталь мотора 2","color":"gold","italic":false}',item_model="motor_part_2",custom_data={motor_part:"part_2"}]

item replace block -154 -63 -2 container.3 with iron_ingot[item_name='{"text":"Деталь мотора 3","color":"gold","italic":false}',item_model="motor_part_3",custom_data={motor_part:"part_3"}]
function maniac:in_game/item_spawn/iterating
