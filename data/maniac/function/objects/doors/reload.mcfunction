##Пезагрузка всех дверей

#Обычные двери
 execute positioned -139 10 -13 run function maniac:objects/doors/place {facing:"west",hinge:"left"}
 execute positioned -139 10 -9 run function maniac:objects/doors/place {facing:"west",hinge:"left"}
 execute positioned -150 10 3 run function maniac:objects/doors/place {facing:"west",hinge:"left"}
 execute positioned -142 10 6 run function maniac:objects/doors/place {facing:"south",hinge:"left"}
 execute positioned -139 10 17 run function maniac:objects/doors/place {facing:"west",hinge:"left"}
 execute positioned -166 10 0 run function maniac:objects/doors/place {facing:"south",hinge:"left"}
 execute positioned -170 10 0 run function maniac:objects/doors/place {facing:"south",hinge:"right"}
 execute positioned -166 10 -9 run function maniac:objects/doors/place {facing:"east",hinge:"right"}
 execute positioned -166 10 -13 run function maniac:objects/doors/place {facing:"east",hinge:"left"}
 execute positioned -156 10 -9 run function maniac:objects/doors/place {facing:"west",hinge:"left"}
 execute positioned -156 10 -13 run function maniac:objects/doors/place {facing:"west",hinge:"right"}
 execute positioned -148 10 -13 run function maniac:objects/doors/place {facing:"east",hinge:"left"}
 execute positioned -148 10 -9 run function maniac:objects/doors/place {facing:"east",hinge:"right"}
 execute positioned -127 19 24 run function maniac:objects/doors/place {facing:"south",hinge:"left"}
 execute positioned -138 19 24 run function maniac:objects/doors/place {facing:"south",hinge:"left"}
 execute positioned -152 19 22 run function maniac:objects/doors/place {facing:"south",hinge:"right"}
 execute positioned -158 19 -9 run function maniac:objects/doors/place {facing:"south",hinge:"left"}
 execute positioned -162 19 -9 run function maniac:objects/doors/place {facing:"south",hinge:"left"}
 execute positioned -166 19 -9 run function maniac:objects/doors/place {facing:"south",hinge:"left"}
 execute positioned -156 1 -10 run function maniac:objects/doors/place {facing:"west",hinge:"right"}
 execute positioned -169 1 2 run function maniac:objects/doors/place {facing:"south",hinge:"right"}
 execute positioned -169 1 10 run function maniac:objects/doors/place {facing:"north",hinge:"right"}
 execute positioned -151 1 24 run function maniac:objects/doors/place {facing:"west",hinge:"right"}
 execute positioned -147 1 24 run function maniac:objects/doors/place {facing:"east",hinge:"right"}
 execute positioned -131 1 24 run function maniac:objects/doors/place {facing:"west",hinge:"right"}
 execute positioned -133 1 14 run function maniac:objects/doors/place {facing:"east",hinge:"right"}
 execute positioned -122 10 9 run function maniac:objects/doors/place {facing:"south",hinge:"left"}

 execute positioned -12 17 -58 run function maniac:objects/doors/place {facing:"north",hinge:"right"}
 fill -36 9 -66 -36 10 -66 air replace
 fill -36 9 -68 -36 10 -68 air replace
 setblock -36 9 -66 mcwdoors:store_door[hinge=left,half=lower,facing=west,open=false,powered=false]
 setblock -36 10 -66 mcwdoors:store_door[hinge=left,half=upper,facing=west,open=false,powered=false]
 setblock -36 10 -68 mcwdoors:store_door[hinge=right,half=upper,facing=west,open=false,powered=false]
 setblock -36 9 -68 mcwdoors:store_door[hinge=right,half=lower,facing=west,open=false,powered=false]
#Закрытые двери
 #Очистка старых интеракшенов и маркеров
  kill @e[type=marker,tag=door_marker]
  kill @e[type=minecraft:interaction,tag=locked_doors]
  kill @e[type=block_display,tag=door_model]

 #Обычные закрытые двери
  #Кабинет директора
   execute positioned -164 10 11 run function maniac:objects/doors/place {facing:"west",hinge:"right"}
   execute positioned -4 16 -189 run function maniac:objects/doors/place {facing:"east",hinge:"right"}
   summon minecraft:interaction -164 10 11 {Tags: ["key_need", "locked_doors"],height: 2, width: 1.01, Passengers:[{id:"minecraft:marker", Tags:["door_marker"], data:{key:"ключ от кабинета директора"}}]}
   summon minecraft:interaction -4 16 -189 {Tags: ["key_need", "locked_doors"],height: 2, width: 1.01, Passengers:[{id:"minecraft:marker", Tags:["door_marker"], data:{key:"ключ от кабинета директора"}}]}
  #Кабинет охраны
   execute positioned -133 10 11 run function maniac:objects/doors/place {facing:"east",hinge:"left"}
   execute positioned -48 9 -177 run function maniac:objects/doors/place {facing:"east",hinge:"left"}
   summon minecraft:interaction -48 9 -177 {Tags: ["key_need", "locked_doors"],height: 2, width: 1.01, Passengers:[{id:"minecraft:marker", Tags:["door_marker"], data:{key:"ключ от охраны"}}]}
   summon minecraft:interaction -133 10 11 {Tags: ["key_need", "locked_doors"],height: 2, width: 1.01, Passengers:[{id:"minecraft:marker", Tags:["door_marker"], data:{key:"ключ от охраны"}}]}
  #Подвал 1
   execute positioned -131 10 6 run function maniac:objects/doors/place {facing:"north",hinge:"left"}
   summon minecraft:interaction -131 10 6 {Tags: ["key_need", "locked_doors"],height: 2, width: 1.01, Passengers:[{id:"minecraft:marker", Tags:["door_marker"], data:{key:"ключ от подвала"}}]}
  #Подвал 2
   execute positioned -156 10 20 run function maniac:objects/doors/place {facing:"west",hinge:"left"}
   summon minecraft:interaction -156 10 20 {Tags: ["key_need", "locked_doors"], height: 2, width: 1.01, Passengers:[{id:"minecraft:marker", Tags:["door_marker"], data:{key:"ключ от подвала"}}]}
  #Кабинет секретаря
  execute positioned -128 10 21 run function maniac:objects/doors/place {facing:"south",hinge:"left"}
  execute positioned -2 16 -180 run function maniac:objects/doors/place {facing:"north",hinge:"left"}
   summon minecraft:interaction -128 10 21 {Tags: ["key_need", "locked_doors"], height: 2, width: 1.01, Passengers:[{id:"minecraft:marker", Tags:["door_marker"], data:{key:"ключ от кабинета секретаря"}}]}
   summon minecraft:interaction -2 16 -180 {Tags: ["key_need", "locked_doors"], height: 2, width: 1.01, Passengers:[{id:"minecraft:marker", Tags:["door_marker"], data:{key:"ключ от кабинета секретаря"}}]}
  #Электрощитовая
   execute positioned 38 10 -167 run function maniac:objects/doors/place {facing:"west",hinge:"left"}
   execute positioned -150 19 16 run function maniac:objects/doors/place {facing:"east",hinge:"left"}
   summon minecraft:interaction -150 19 16 {Tags: ["key_need", "locked_doors"], height: 2, width: 1.01, Passengers:[{id:"minecraft:marker", Tags:["door_marker"], Tags:["door_marker"], data:{key:"ключ от электрощитовой"}}]}
   summon minecraft:interaction 38 10 -167 {Tags: ["key_need", "locked_doors"], height: 2, width: 1.01, Passengers:[{id:"minecraft:marker", Tags:["door_marker"], Tags:["door_marker"], data:{key:"ключ от электрощитовой"}}]}
  #Лабаратория
   execute positioned -145 19 0 run function maniac:objects/doors/place {facing:"north",hinge:"right"}
   summon minecraft:interaction -145 19 0 {Tags: ["key_need", "locked_doors"], height: 2, width: 1.01, Passengers:[{id:"minecraft:marker", Tags:["door_marker"], data:{key:"ключ от лаборатории"}}]}
  #Генераторная на 2 этаже
   execute positioned -133 19 15 run function maniac:objects/doors/place {facing:"west",hinge:"right"}
   summon minecraft:interaction -133 19 15 {Tags: ["key_need", "locked_doors"], height: 2, width: 1.01, Passengers:[{id:"minecraft:marker", Tags:["door_marker"], data:{key:"ключ от генераторной на 2 этаже"}}]}
  #Генераторная в подвале
   execute positioned -152 1 10 run function maniac:objects/doors/place {facing:"north",hinge:"right"}
   summon minecraft:interaction -152 1 10 {Tags: ["key_need", "locked_doors"], height: 2, width: 1.01, Passengers:[{id:"minecraft:marker", Tags:["door_marker"], data:{key:"ключ от генераторной в подвале"}}]}
  #Инженерная
   execute positioned -145 19 6 run function maniac:objects/doors/place {facing:"south",hinge:"left"}
   summon minecraft:interaction -145 19 6 {Tags: ["key_need", "locked_doors"], height: 2, width: 1.01, Passengers:[{id:"minecraft:marker", Tags:["door_marker"], data:{key:"ключ от инженерной"}}]}
  #Кабинет №1
   execute positioned -160 19 6 run function maniac:objects/doors/place {facing:"south",hinge:"left"}
   summon minecraft:interaction -160 19 6 {Tags: ["key_need", "locked_doors"], height: 2, width: 1.01, Passengers:[{id:"minecraft:marker", Tags:["door_marker"], data:{key:"ключ от кабинета №1"}}]}
  #Кабинет №2
   execute positioned -168 19 6 run function maniac:objects/doors/place {facing:"south",hinge:"right"}
   summon minecraft:interaction -168 19 6 {Tags: ["key_need", "locked_doors"], height: 2, width: 1.01, Passengers:[{id:"minecraft:marker", Tags:["door_marker"], data:{key:"ключ от кабинета №2"}}]}
  #Комната управления
   execute positioned -150 1 -10 run function maniac:objects/doors/place {facing:"east",hinge:"left"}
   summon minecraft:interaction -150 1 -10 {Tags: ["key_need", "locked_doors"], height: 2.0, width: 1.01, Passengers:[{id:"minecraft:marker", Tags:["door_marker"], data:{key:"ключ от комнаты управления"}}]}
  #Бибилиотека
   execute positioned -136 10 28 run function maniac:objects/doors/place {facing:"south",hinge:"right"}
   summon minecraft:interaction -136 10 28 {Tags: ["key_need", "locked_doors"], height: 2.0, width: 1.01, Passengers:[{id:"minecraft:marker", Tags:["door_marker"], data:{key:"ключ от библиотеки"}}]}
  #Чердак 1
   execute positioned -131 28 6 run function maniac:objects/doors/place {facing:"south",hinge:"right"}
   summon minecraft:interaction -131 28 6 {Tags: ["roof", "locked_doors"], height: 2, width: 1.01}
  #Чердак 2
   execute positioned -156 28 20 run function maniac:objects/doors/place {facing:"east",hinge:"right"}
   summon minecraft:interaction -156 28 20 {Tags: ["roof", "locked_doors"], height: 2, width: 1.01}
  #Комнаты вожатых
   execute positioned -61 9 -102 run function maniac:objects/doors/place {facing:"east",hinge:"right"}
      summon minecraft:interaction -61 9 -102 {Tags: ["key_need", "locked_doors"], height: 2.0, width: 1.01, Passengers:[{id:"minecraft:marker", Tags:["door_marker"], data:{key:"ключ от комнаты вожатых"}}]}
   execute positioned -61 9 -98 run function maniac:objects/doors/place {facing:"east",hinge:"right"}
      summon minecraft:interaction -61 9 -98 {Tags: ["key_need", "locked_doors"], height: 2.0, width: 1.01, Passengers:[{id:"minecraft:marker", Tags:["door_marker"], data:{key:"ключ от комнаты вожатых"}}]}
   execute positioned -61 9 -90 run function maniac:objects/doors/place {facing:"east",hinge:"right"}
      summon minecraft:interaction -61 9 -90 {Tags: ["key_need", "locked_doors"], height: 2.0, width: 1.01, Passengers:[{id:"minecraft:marker", Tags:["door_marker"], data:{key:"ключ от комнаты вожатых"}}]}
   execute positioned -61 9 -86 run function maniac:objects/doors/place {facing:"east",hinge:"right"}
      summon minecraft:interaction -61 9 -86 {Tags: ["key_need", "locked_doors"], height: 2.0, width: 1.01, Passengers:[{id:"minecraft:marker", Tags:["door_marker"], data:{key:"ключ от комнаты вожатых"}}]}
   execute positioned -61 9 -82 run function maniac:objects/doors/place {facing:"east",hinge:"right"}
      summon minecraft:interaction -61 9 -82 {Tags: ["key_need", "locked_doors"], height: 2.0, width: 1.01, Passengers:[{id:"minecraft:marker", Tags:["door_marker"], data:{key:"ключ от комнаты вожатых"}}]}
  #Лодочная станция
   execute positioned 45 9 -100 run function maniac:objects/doors/place {facing:"west",hinge:"right"}
      summon minecraft:interaction 45 9 -100 {Tags: ["key_need", "locked_doors"], height: 2, width: 1.01, Passengers:[{id:"minecraft:marker", Tags:["door_marker"], data:{key:"ключ от лодочной станции"}}]}
 #Вышка
    execute positioned 40 8 -173 run function maniac:objects/doors/place {facing:"south",hinge:"right"}
       summon minecraft:interaction 40 8 -173 {Tags: ["key_need", "locked_doors"], height: 2, width: 1.01, Passengers:[{id:"minecraft:marker", Tags:["door_marker"], data:{key:"ключ от вышки"}}]}
 #генераторная
     execute positioned 12 9 -165 run function maniac:objects/doors/place {facing:"south",hinge:"right"}
     execute positioned 13 9 -165 run function maniac:objects/doors/place {facing:"south",hinge:"left"}
        summon minecraft:interaction 12.97 9 -165 {Tags: ["key_need", "locked_doors"], height: 2, width: 2.02, Passengers:[{id:"minecraft:marker", Tags:["door_marker"], data:{key:"ключ от генераторной"}}]}
     execute positioned 26 9 -172 run function maniac:objects/doors/place {facing:"south",hinge:"left"}
        summon minecraft:interaction 26 9 -172 {Tags: ["key_need", "locked_doors"], height: 2, width: 1.01, Passengers:[{id:"minecraft:marker", Tags:["door_marker"], data:{key:"ключ от генераторной"}}]}
 #Мастерская
     execute positioned -31 17 -59 run function maniac:objects/doors/place {facing:"north",hinge:"right"}
     summon minecraft:interaction -31 17 -59 {Tags: ["key_need", "locked_doors"], height: 2.0, width: 1.01, Passengers:[{id:"minecraft:marker", Tags:["door_marker"], data:{key:"ключ от мастерской"}}]}
  #Кухня 1
     execute positioned -13 9 -51 run function maniac:objects/doors/place {facing:"west",hinge:"right"}
     summon minecraft:interaction -13 9 -51 {Tags: ["key_need", "locked_doors"], height: 2.0, width: 1.01, Passengers:[{id:"minecraft:marker", Tags:["door_marker"], data:{key:"ключ от кухни"}}]}
  #Кухня 2
     execute positioned -2 9 -64 run function maniac:objects/doors/place {facing:"south",hinge:"right"}
     summon minecraft:interaction -2 9 -64 {Tags: ["key_need", "locked_doors"], height: 2.0, width: 1.01, Passengers:[{id:"minecraft:marker", Tags:["door_marker"], data:{key:"ключ от кухни"}}]}
  #Запасной выход
     execute positioned -3 9 -49 run function maniac:objects/doors/place {facing:"south",hinge:"right"}
     execute positioned -2 9 -49 run function maniac:objects/doors/place {facing:"south",hinge:"left"}
     summon minecraft:interaction -1.97 9 -49 {Tags: ["key_need", "locked_doors"], height: 2, width: 2.02, Passengers:[{id:"minecraft:marker", Tags:["door_marker"], data:{key:"ключ от запасного выхода"}}]}

  #Запертая дверь
  setblock 42 11 -163 minecraft:lever[face=wall,facing=west,powered=false]
  setblock 44 11 -163 minecraft:sticky_piston[extended=false,facing=down]
  setblock 44 10 -163 minecraft:redstone_block
  setblock 44 9 -163 minecraft:air

 #Односторонние закрытые двери
  #Медпункт 1
   execute positioned -142 19 24 run function maniac:objects/doors/place {facing:"south",hinge:"left"}
   summon minecraft:interaction -142 19 24 {Tags: ["key_need", "locked_doors"], height: 2, width: 1.01, Passengers:[{id:"minecraft:marker", Tags:["door_marker"], data:{key:"ключ от медпункта"}}]}
   summon minecraft:interaction -142 19 24.55 {Tags: ["backdoor_trigger", "locked_doors"], height: 2, width: 1.01}

   execute positioned -10 17 -56 run function maniac:objects/doors/place {facing:"west",hinge:"left"}
   summon minecraft:interaction -10 17 -56 {Tags: ["key_need", "locked_doors"], height: 2, width: 1.01, Passengers:[{id:"minecraft:marker", Tags:["door_marker"], data:{key:"ключ от медпункта"}}]}
   summon minecraft:interaction -9.45 17 -56 {Tags: ["backdoor_trigger", "locked_doors"], height: 2, width: 1.01}
  #Медпункт 2
   execute positioned -148 19 25 run function maniac:objects/doors/place {facing:"east",hinge:"right"}
   summon minecraft:interaction -148 19 25 {Tags: ["key_need", "locked_doors"], height: 2, width: 1.01, Passengers:[{id:"minecraft:marker", Tags:["door_marker"], data:{key:"ключ от медпункта"}}]}
   summon minecraft:interaction -147.45 19 25 {Tags: ["backdoor_trigger", "locked_doors"], height: 2, width: 1.01}

   execute positioned -8 17 -58 run function maniac:objects/doors/place {facing:"north",hinge:"right"}
   summon minecraft:interaction -8 17 -58 {Tags: ["key_need", "locked_doors"], height: 2, width: 1.01, Passengers:[{id:"minecraft:marker", Tags:["door_marker"], data:{key:"ключ от медпункта"}}]}
   summon minecraft:interaction -8 17 -57.55 {Tags: ["backdoor_trigger", "locked_doors"], height: 2, width: 1.01}
  #Кухня 1
   execute positioned -149 10 12 run function maniac:objects/doors/place {facing:"north",hinge:"left"}
   summon minecraft:interaction -149 10 12 {Tags: ["key_need", "locked_doors"], height: 2, width: 1.01, Passengers:[{id:"minecraft:marker", Tags:["door_marker"], data:{key:"ключ от кухни"}}]}
   summon minecraft:interaction -149 10 12.45 {Tags: ["backdoor_trigger", "locked_doors"], height: 2, width: 1.01}
  #Кухня 2
   execute positioned -150 10 9 run function maniac:objects/doors/place {facing:"east",hinge:"left"}
   summon minecraft:interaction -150 10 9 {Tags: ["key_need", "locked_doors"], height: 2, width: 1.01, Passengers:[{id:"minecraft:marker", Tags:["door_marker"], data:{key:"ключ от кухни"}}]}
   summon minecraft:interaction -149.45 10 9 {Tags: ["backdoor_trigger", "locked_doors"], height: 2, width: 1.01}
  #Кухня 3
   execute positioned -145 10 9 run function maniac:objects/doors/place {facing:"west",hinge:"right"}
   summon minecraft:interaction -145 10 9 {Tags: ["key_need", "locked_doors"], height: 2, width: 1.01, Passengers:[{id:"minecraft:marker", Tags:["door_marker"], data:{key:"ключ от кухни"}}]}
   summon minecraft:interaction -144.55 10 9 {Tags: ["backdoor_trigger", "locked_doors"], height: 2, width: 1.01}

   execute positioned -21 16 -189 run function maniac:objects/doors/place {facing:"west",hinge:"right"}
   summon minecraft:interaction -21 16 -189 {Tags: ["key_need", "locked_doors"], height: 2, width: 1.01, Passengers:[{id:"minecraft:marker", Tags:["door_marker"], data:{key:"ключ от библиотеки"}}]}
   summon minecraft:interaction -21 16 -189 {Tags: ["backdoor_trigger", "locked_doors"], height: 2, width: 1.01}

  #Закрытые двери
   execute positioned -31 17 -64 run function maniac:objects/doors/place {facing:"south",hinge:"left"}
   summon minecraft:interaction -31 17 -64 {Tags:["key_need","locked_doors","door_int_31_64"], height:2.0, width:1.01, Passengers:[{id:"minecraft:marker", Tags:["door_marker"], data:{key:"монтировка"}},{id:"minecraft:block_display", Tags:["door_model"], FallDistance: 0.0f, Passengers: [{FallDistance: 0.0f, block_state: {Name: "minecraft:gray_concrete"}, id: "minecraft:block_display", transformation: {left_rotation: [0.1167062f, 0.6974092f, -0.1167062f, 0.6974092f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.04084001f, 0.03640816f, 0.040520344f], translation: [-0.5799701f, -0.10300382f, 0.03446907f]}}, {FallDistance: 0.0f, block_state: {Name: "minecraft:gray_concrete"}, id: "minecraft:block_display", transformation: {left_rotation: [-0.1409744f, 0.6929114f, 0.1409744f, 0.6929114f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.040840007f, 0.036408152f, 0.040520336f], translation: [0.5949296f, 0.08771709f, 0.03446907f]}}, {FallDistance: 0.0f, Passengers: [{FallDistance: 0.0f, block_state: {Name: "minecraft:gray_concrete"}, id: "minecraft:block_display", transformation: {left_rotation: [0.2476339f, 0.6623273f, -0.2476339f, 0.6623273f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.040840022f, 0.03640813f, 0.04052031f], translation: [-0.57632494f, -0.4407428f, 0.034469076f]}}, {FallDistance: 0.0f, block_state: {Name: "minecraft:gray_concrete"}, id: "minecraft:block_display", transformation: {left_rotation: [-0.00617062f, 0.7070799f, 0.00617062f, 0.7070799f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.04084001f, 0.036408152f, 0.04052034f], translation: [0.5844681f, -0.70403445f, 0.034469076f]}}], block_state: {Name: "minecraft:spruce_slab", Properties: {type: "bottom", waterlogged: "false"}}, id: "minecraft:block_display", transformation: {left_rotation: [0.4449967f, -0.5495252f, 0.5495252f, -0.4449967f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.18749969f, 0.12499993f, 1.4374989f], translation: [-0.6835518f, -0.32136226f, 0.062499985f]}}, {FallDistance: 0.0f, Passengers: [{FallDistance: 0.0f, block_state: {Name: "minecraft:gray_concrete"}, id: "minecraft:block_display", transformation: {left_rotation: [0.2476340f, 0.6623273f, -0.2476340f, 0.6623273f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.040839992f, 0.036408134f, 0.04052032f], translation: [-0.5763248f, 0.7467571f, 0.03446907f]}}, {FallDistance: 0.0f, block_state: {Name: "minecraft:gray_concrete"}, id: "minecraft:block_display", transformation: {left_rotation: [-0.00617062f, 0.7070798f, 0.00617062f, 0.7070798f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.040839992f, 0.03640815f, 0.04052034f], translation: [0.5844686f, 0.48346534f, 0.03446907f]}}], block_state: {Name: "minecraft:spruce_slab", Properties: {type: "bottom", waterlogged: "false"}}, id: "minecraft:block_display", transformation: {left_rotation: [0.4449967f, -0.5495252f, 0.5495252f, -0.4449967f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.18749984f, 0.12499998f, 1.4374992f], translation: [-0.68355167f, 0.8661376f, 0.062499985f]}}], block_state: {Name: "minecraft:spruce_slab", Properties: {type: "bottom", waterlogged: "false"}}, id: "minecraft:block_display", transformation: {left_rotation: [0.5416752f, -0.4545195f, 0.4545195f, -0.5416752f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.18749982f, 0.12499996f, 1.4374994f], translation: [-0.7241098f, -1.032484025f, 0.062499985f]}}]}

   execute positioned -4 17 -59 run function maniac:objects/doors/place {facing:"south",hinge:"left"}
   summon minecraft:interaction -4 17 -59 {Tags:["key_need","locked_doors","door_int_31_64"], height:2.0, width:1.01, Passengers:[{id:"minecraft:marker", Tags:["door_marker"], data:{key:"монтировка"}},{id:"minecraft:block_display", Tags:["door_model"], FallDistance: 0.0f, Passengers: [{FallDistance: 0.0f, block_state: {Name: "minecraft:gray_concrete"}, id: "minecraft:block_display", transformation: {left_rotation: [0.1167062f, 0.6974092f, -0.1167062f, 0.6974092f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.04084001f, 0.03640816f, 0.040520344f], translation: [-0.5799701f, -0.10300382f, 0.03446907f]}}, {FallDistance: 0.0f, block_state: {Name: "minecraft:gray_concrete"}, id: "minecraft:block_display", transformation: {left_rotation: [-0.1409744f, 0.6929114f, 0.1409744f, 0.6929114f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.040840007f, 0.036408152f, 0.040520336f], translation: [0.5949296f, 0.08771709f, 0.03446907f]}}, {FallDistance: 0.0f, Passengers: [{FallDistance: 0.0f, block_state: {Name: "minecraft:gray_concrete"}, id: "minecraft:block_display", transformation: {left_rotation: [0.2476339f, 0.6623273f, -0.2476339f, 0.6623273f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.040840022f, 0.03640813f, 0.04052031f], translation: [-0.57632494f, -0.4407428f, 0.034469076f]}}, {FallDistance: 0.0f, block_state: {Name: "minecraft:gray_concrete"}, id: "minecraft:block_display", transformation: {left_rotation: [-0.00617062f, 0.7070799f, 0.00617062f, 0.7070799f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.04084001f, 0.036408152f, 0.04052034f], translation: [0.5844681f, -0.70403445f, 0.034469076f]}}], block_state: {Name: "minecraft:spruce_slab", Properties: {type: "bottom", waterlogged: "false"}}, id: "minecraft:block_display", transformation: {left_rotation: [0.4449967f, -0.5495252f, 0.5495252f, -0.4449967f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.18749969f, 0.12499993f, 1.4374989f], translation: [-0.6835518f, -0.32136226f, 0.062499985f]}}, {FallDistance: 0.0f, Passengers: [{FallDistance: 0.0f, block_state: {Name: "minecraft:gray_concrete"}, id: "minecraft:block_display", transformation: {left_rotation: [0.2476340f, 0.6623273f, -0.2476340f, 0.6623273f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.040839992f, 0.036408134f, 0.04052032f], translation: [-0.5763248f, 0.7467571f, 0.03446907f]}}, {FallDistance: 0.0f, block_state: {Name: "minecraft:gray_concrete"}, id: "minecraft:block_display", transformation: {left_rotation: [-0.00617062f, 0.7070798f, 0.00617062f, 0.7070798f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.040839992f, 0.03640815f, 0.04052034f], translation: [0.5844686f, 0.48346534f, 0.03446907f]}}], block_state: {Name: "minecraft:spruce_slab", Properties: {type: "bottom", waterlogged: "false"}}, id: "minecraft:block_display", transformation: {left_rotation: [0.4449967f, -0.5495252f, 0.5495252f, -0.4449967f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.18749984f, 0.12499998f, 1.4374992f], translation: [-0.68355167f, 0.8661376f, 0.062499985f]}}], block_state: {Name: "minecraft:spruce_slab", Properties: {type: "bottom", waterlogged: "false"}}, id: "minecraft:block_display", transformation: {left_rotation: [0.5416752f, -0.4545195f, 0.4545195f, -0.5416752f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.18749982f, 0.12499996f, 1.4374994f], translation: [-0.7241098f, -1.032484025f, 0.062499985f]}}]}

   execute positioned -9 17 -64 run function maniac:objects/doors/place {facing:"south",hinge:"left"}
   summon minecraft:interaction -9 17 -64 {Tags:["key_need","locked_doors","door_int_31_64"], height:2.0, width:1.01, Passengers:[{id:"minecraft:marker", Tags:["door_marker"], data:{key:"монтировка"}},{id:"minecraft:block_display", Tags:["door_model"], FallDistance: 0.0f, Passengers: [{FallDistance: 0.0f, block_state: {Name: "minecraft:gray_concrete"}, id: "minecraft:block_display", transformation: {left_rotation: [0.1167062f, 0.6974092f, -0.1167062f, 0.6974092f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.04084001f, 0.03640816f, 0.040520344f], translation: [-0.5799701f, -0.10300382f, 0.03446907f]}}, {FallDistance: 0.0f, block_state: {Name: "minecraft:gray_concrete"}, id: "minecraft:block_display", transformation: {left_rotation: [-0.1409744f, 0.6929114f, 0.1409744f, 0.6929114f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.040840007f, 0.036408152f, 0.040520336f], translation: [0.5949296f, 0.08771709f, 0.03446907f]}}, {FallDistance: 0.0f, Passengers: [{FallDistance: 0.0f, block_state: {Name: "minecraft:gray_concrete"}, id: "minecraft:block_display", transformation: {left_rotation: [0.2476339f, 0.6623273f, -0.2476339f, 0.6623273f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.040840022f, 0.03640813f, 0.04052031f], translation: [-0.57632494f, -0.4407428f, 0.034469076f]}}, {FallDistance: 0.0f, block_state: {Name: "minecraft:gray_concrete"}, id: "minecraft:block_display", transformation: {left_rotation: [-0.00617062f, 0.7070799f, 0.00617062f, 0.7070799f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.04084001f, 0.036408152f, 0.04052034f], translation: [0.5844681f, -0.70403445f, 0.034469076f]}}], block_state: {Name: "minecraft:spruce_slab", Properties: {type: "bottom", waterlogged: "false"}}, id: "minecraft:block_display", transformation: {left_rotation: [0.4449967f, -0.5495252f, 0.5495252f, -0.4449967f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.18749969f, 0.12499993f, 1.4374989f], translation: [-0.6835518f, -0.32136226f, 0.062499985f]}}, {FallDistance: 0.0f, Passengers: [{FallDistance: 0.0f, block_state: {Name: "minecraft:gray_concrete"}, id: "minecraft:block_display", transformation: {left_rotation: [0.2476340f, 0.6623273f, -0.2476340f, 0.6623273f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.040839992f, 0.036408134f, 0.04052032f], translation: [-0.5763248f, 0.7467571f, 0.03446907f]}}, {FallDistance: 0.0f, block_state: {Name: "minecraft:gray_concrete"}, id: "minecraft:block_display", transformation: {left_rotation: [-0.00617062f, 0.7070798f, 0.00617062f, 0.7070798f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.040839992f, 0.03640815f, 0.04052034f], translation: [0.5844686f, 0.48346534f, 0.03446907f]}}], block_state: {Name: "minecraft:spruce_slab", Properties: {type: "bottom", waterlogged: "false"}}, id: "minecraft:block_display", transformation: {left_rotation: [0.4449967f, -0.5495252f, 0.5495252f, -0.4449967f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.18749984f, 0.12499998f, 1.4374992f], translation: [-0.68355167f, 0.8661376f, 0.062499985f]}}], block_state: {Name: "minecraft:spruce_slab", Properties: {type: "bottom", waterlogged: "false"}}, id: "minecraft:block_display", transformation: {left_rotation: [0.5416752f, -0.4545195f, 0.4545195f, -0.5416752f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.18749982f, 0.12499996f, 1.4374994f], translation: [-0.7241098f, -1.032484025f, 0.062499985f]}}]}





    #summon minecraft:block_display ~ ~ ~ {FallDistance: 0.0f, Passengers: [{FallDistance: 0.0f, block_state: {Name: "minecraft:gray_concrete"}, id: "minecraft:block_display", transformation: {left_rotation: [0.16504753f, 5.1877924E-10f, 3.1001062E-9f, 0.9862857f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.040840007f, 0.036408156f, 0.040520336f], translation: [-0.03446907f, -0.10300382f, -0.5799701f]}}, {FallDistance: 0.0f, block_state: {Name: "minecraft:gray_concrete"}, id: "minecraft:block_display", transformation: {left_rotation: [-0.19936794f, -6.2665606E-10f, 3.0801124E-9f, 0.9799248f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.040840004f, 0.03640815f, 0.040520333f], translation: [-0.03446907f, 0.08771709f, 0.5949296f]}}, {FallDistance: 0.0f, Passengers: [{FallDistance: 0.0f, block_state: {Name: "minecraft:gray_concrete"}, id: "minecraft:block_display", transformation: {left_rotation: [0.3502073f, 5.4322775E-11f, -1.6994004E-8f, 0.9366723f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.04084002f, 0.036408134f, 0.040520314f], translation: [-0.034469076f, -0.4407428f, -0.57632494f]}}, {FallDistance: 0.0f, block_state: {Name: "minecraft:gray_concrete"}, id: "minecraft:block_display", transformation: {left_rotation: [-0.0087265745f, 6.140821E-9f, -1.5845805E-8f, 0.999962f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.040840007f, 0.03640815f, 0.040520336f], translation: [-0.034469076f, -0.70403445f, 0.5844681f]}}], block_state: {Name: "minecraft:spruce_slab", Properties: {type: "bottom", waterlogged: "false"}}, id: "minecraft:block_display", transformation: {left_rotation: [-0.07391279f, -0.07391279f, 0.7032332f, -0.7032332f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.18749969f, 0.12499992f, 1.4374989f], translation: [-0.062499985f, -0.32136226f, -0.6835518f]}}, {FallDistance: 0.0f, Passengers: [{FallDistance: 0.0f, block_state: {Name: "minecraft:gray_concrete"}, id: "minecraft:block_display", transformation: {left_rotation: [0.35020733f, -1.0600072E-9f, -2.8351186E-9f, 0.9366722f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.040839992f, 0.03640814f, 0.040520325f], translation: [-0.03446907f, 0.7467571f, -0.5763248f]}}, {FallDistance: 0.0f, block_state: {Name: "minecraft:gray_concrete"}, id: "minecraft:block_display", transformation: {left_rotation: [-0.008726578f, 2.6413597E-11f, -3.0266838E-9f, 0.999962f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.040839992f, 0.03640815f, 0.040520336f], translation: [-0.03446907f, 0.48346534f, 0.5844686f]}}], block_state: {Name: "minecraft:spruce_slab", Properties: {type: "bottom", waterlogged: "false"}}, id: "minecraft:block_display", transformation: {left_rotation: [-0.07391278f, -0.07391278f, 0.7032332f, -0.7032332f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.18749984f, 0.12499996f, 1.4374993f], translation: [-0.062499985f, 0.8661376f, -0.68355167f]}}], block_state: {Name: "minecraft:spruce_slab", Properties: {type: "bottom", waterlogged: "false"}}, transformation: {left_rotation: [0.06162844f, 0.06162844f, 0.70441604f, -0.70441604f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.1874998f, 0.12499995f, 1.4374994f], translation: [-0.062499985f, -0.032484025f, -0.7241098f]}}
  # И вся остальная фигня:
   fill -141 1 1 -135 4 1 minecraft:polished_deepslate_wall
   fill -133 10 -7 -133 12 -5 minecraft:polished_blackstone_wall
   fill -133 19 -7 -133 21 -5 minecraft:polished_blackstone_wall