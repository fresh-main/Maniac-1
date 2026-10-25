## Генерация Предметов
# Очистка старых предметов
 kill @e[tag=Item_interact]
 kill @e[tag=Item]
#Генерация ключей от охраны и медпункта
 data modify storage efm Pos set value [["-164 14 -10","-165 12 -8","-165 14 -9","-164 11 -10"],["-146 14 -8","-147 12 -10","-144 14 -9","-146 11 -8"],["-144 14 -12","-147 12 -14","-146 14 -12","-146 11 -12"],["-164 13 -14","-164 11 -14","-163 14 -14","-163 11 -14"],["-157 12 -8","-159 11 -10","-158 11 -10","-158 13 -10"],["-157 14 -12","-159 11 -14","-157 12 -12","-160 14 -12"]]
 item replace block -154 -63 -2 container.0 with tripwire_hook[item_name='[{"text":"Ключ от ","color":"gray"},{"color":"blue","text":"охраны"}]',item_model="kluch_1",custom_data={key: "ключ от охраны",useCount:1}]
 item replace block -154 -63 -2 container.1 with tripwire_hook[item_name='[{"text":"Ключ от ","color":"gray"},{"color":"red","text":"медпункта"}]',item_model="kluch_4",custom_data={key: "ключ от медпункта",useCount:2}]
 function maniac:in_game/item_spawn/iterating
#Генерация ключей от инженерной и лабаратории
 data modify storage efm Pos set value [["-162 2 21","-164 3 21"],["-144 2 7","-143 2 7"],["-155 2 24","-155 2 25"],["-129 2 4","-130 2 3"]]
 item replace block -154 -63 -2 container.0 with tripwire_hook[item_name='[{"text":"Ключ от ","color":"gray"},{"color":"dark_aqua","text":"инженерной"}]',item_model="kluch_13",custom_data={key: "ключ от инженерной",useCount:1}]
 item replace block -154 -63 -2 container.1 with tripwire_hook[item_name='[{"text":"Ключ от ","color":"gray"},{"color":"aqua","text":"лаборатории"}]',item_model="kluch_12",custom_data={key: "ключ от лаборатории",useCount:1}]
 function maniac:in_game/item_spawn/iterating
#Генерация изоленты
 data modify storage efm Pos set value [["-170 10 3"],["-166 10 3"],["-140 10 -12"],["-142 10 -10"]]
 item replace block -154 -63 -2 container.0 with heart_of_the_sea[item_name='{"color":"aqua","text":"Изолента"}',custom_data={item: "изолента"},item_model="izolenta"]
 function maniac:in_game/item_spawn/iterating
#Генерация ключей от подвала, кабинета №1, кабинета №2, генераторной в на 2 этаже
 data modify storage efm Pos set value [["-127 3 12","-130 2 13","-128 2 12","-132 2 13","-126 1 16","-132 3 12","-126 2 13"],["-137 2 23","-133 3 22","-132 2 23","-142 2 25","-137 3 25","-134 2 22","-145 3 26"],["-164 2 3","-161 2 7","-171 1 9","-161 1 3","-163 2 3","-164 2 9","-161 2 5","-167 2 3"],["-158 3 -5","-160 2 -9","-165 2 -13","-164 2 -8","-170 2 -5","-160 2 -8","-168 2 -9","-157 2 -7"]]
 item replace block -154 -63 -2 container.0 with tripwire_hook[item_name='[{"text":"Ключ от ","color":"gray"},{"color":"gold","text":"подвала"}]',item_model="kluch_8",custom_data={key: "ключ от подвала",useCount:1}]
 item replace block -154 -63 -2 container.1 with tripwire_hook[item_name='[{"text":"Ключ от ","color":"gray"},{"color":"gray","text":"кабинета №1"}]',item_model="kluch_2",custom_data={key: "ключ от кабинета №1",useCount:1}]
 item replace block -154 -63 -2 container.2 with tripwire_hook[item_name='[{"text":"Ключ от ","color":"gray"},{"color":"dark_gray","text":"кабинета №2"}]',item_model="kluch_3",custom_data={key: "ключ от кабинета №2",useCount:1}]
 item replace block -154 -63 -2 container.3 with tripwire_hook[item_name='[{"text":"Ключ от ","color":"gray"},{"color":"green","text":"генераторной на 2 этаже"}]',item_model="kluch_5",custom_data={key: "ключ от генераторной на 2 этаже",useCount:1}]
 function maniac:in_game/item_spawn/iterating
#Генерация ключе от комнаты управления и электрощитовой
 data modify storage efm Pos set value [["-157 13 1","-157 10 3","-151 12 1","-151 12 5"],["-141 11 14","-141 11 21","-145 11 21","-145 11 14"],["-140 12 10","-143 11 9","-144 12 7","-140 10 11"]]
 item replace block -154 -63 -2 container.0 with tripwire_hook[item_name='[{"text":"Ключ от ","color":"gray"},{"color":"#593015","text":"комнаты управления"}]',item_model="kluch_7",custom_data={key: "ключ от комнаты управления",useCount:1}]
 item replace block -154 -63 -2 container.1 with tripwire_hook[item_name='[{"text":"Ключ от ","color":"gray"},{"color":"yellow","text":"электрощитовой"}]',item_model="kluch_14",custom_data={key: "ключ от электрощитовой",useCount:1}]
 function maniac:in_game/item_spawn/iterating
#Генерация топлива
 #в подвале
  data modify storage efm Pos set value [["-150 2 1"],["-155 2 -6"],["-146 1 10"],["-132 2 10"],["-127 2 26"]]
  item replace block -154 -63 -2 container.0 with potion[custom_name='{"text":"Топливо (1л.)","color":"yellow","italic":false}',potion_contents={potion:"water"},item_model="kanistra"]
  item replace block -154 -63 -2 container.1 with potion[custom_name='{"text":"Топливо (1л.)","color":"yellow","italic":false}',potion_contents={potion:"water"},item_model="kanistra"]
  function maniac:in_game/item_spawn/iterating
 #на 1 этаже
  data modify storage efm Pos set value [["-135 11 -14"],["-162 10 -5"],["-170 11 -14"],["-159 10 5"],["-134 10 26"],["-143 10 13"],["-144 10 1"],["-153 12 2"]]
  item replace block -154 -63 -2 container.0 with potion[custom_name='{"text":"Топливо (1л.)","color":"yellow","italic":false}',potion_contents={potion:"water"},item_model="kanistra"]
  item replace block -154 -63 -2 container.1 with potion[custom_name='{"text":"Топливо (1л.)","color":"yellow","italic":false}',potion_contents={potion:"water"},item_model="kanistra"]
  function maniac:in_game/item_spawn/iterating
 #на 2 этаже
  data modify storage efm Pos set value [["-151 19 12"],["-154 19 21"],["-135 19 -14"],["-137 19 25"],["-157 19 -8"],["-134 19 -1"],["-138 19 11"],["-170 21 -14"],["-162 19 1"],["-159 19 -4"]]
  item replace block -154 -63 -2 container.0 with potion[custom_name='{"text":"Топливо (1л.)","color":"yellow","italic":false}',potion_contents={potion:"water"},item_model="kanistra"]
  item replace block -154 -63 -2 container.1 with potion[custom_name='{"text":"Топливо (1л.)","color":"yellow","italic":false}',potion_contents={potion:"water"},item_model="kanistra"]
  function maniac:in_game/item_spawn/iterating
#Генерация болтореза и отвёртки
 data modify storage efm Pos set value [["-143 20 -5","-142 20 -8","-149 20 -5"],["-144 20 10","-149 19 9","-143 20 9","-142 20 9"]]
 item replace block -154 -63 -2 container.0 with shears[item_name='{"color":"gold","text":"Болторез"}',custom_data={item: "болторез"},item_model="boltorez"]
 item replace block -154 -63 -2 container.1 with iron_nugget[item_name='{"color":"blue","text":"Отвёртка"}',custom_data={item: "отвёртка"},item_model="otvertka"]
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
 data modify storage efm Pos set value [["-149 3 -14"],["-155 2 -7"],["-163 2 -14"],["-163 2 9"],["-163 3 21"],["-138 2 24"],["-129 2 26"],["-131 2 10"],["-159 2 6"],["-126 12 22"],["-147 11 14"],["-148 11 11"],["-142 11 8 "],["-155 11 2"],["-141 11 -14"],["-147 10 -8"],["-158 11 -14"],["-163 11 -10"],["-168 11 -14"],["-165 10 1"],["-170 11 7"],["-137 11 -14"],["-121 10 11"],["-167 20 -8"],["-148 20 -11"],["-144 20 -8"],["-134 19 4"],["-144 20 9"],["-157 20 9"],["-170 20 13"],["-141 21 16"],["-134 21 13"],["-129 20 25"],["-149 21 23 "]]
 execute store result score temp global_data if entity @a[team=peaceful]
 execute store result storage efm temp byte 1 run scoreboard players operation temp global_data *= medkits_per_player config
 execute if score temp global_data > max_medkits config store result storage efm temp byte 1 run scoreboard players operation temp global_data = max_medkits config
 function maniac:in_game/generation/medkit with storage efm
 function maniac:in_game/item_spawn/iterating
#Генерация ключа от охраны и большой аптечки
 item replace block -154 -63 -2 container.0 with tripwire_hook[item_name='[{"text":"Ключ от ","color":"gray"},{"color":"gold","text":"подвала"}]',item_model="kluch_8",custom_data={key: "ключ от подвала",useCount:1}]
 item replace block -154 -63 -2 container.1 with book[item_name='{"color":"red","text":"Аптечка"}', consumable={animation:"eat",consume_seconds:7.0f,has_consume_particles:false,sound:{range:0f,sound_id:"minecraft:entity.generic.eat"}}, item_model="medicaments"]
 execute positioned -123 11 13 run function maniac:in_game/item_spawn/summon
 execute positioned -146 20 23 run function maniac:in_game/item_spawn/summon