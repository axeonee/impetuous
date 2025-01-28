// [wave, type, spawnpoint, delay]

waves = ds_list_create()

// Wave 0
ds_list_add(waves, [0, obj_enemy_ranger_fast, 4, 0])
ds_list_add(waves, [0, obj_enemy_chaser, 4, 100])
ds_list_add(waves, [0, obj_enemy_ranger_fast, 6, 0])
ds_list_add(waves, [0, obj_enemy_chaser, 6, 100])
ds_list_add(waves, [0, obj_enemy_chaser, 1, 150])
ds_list_add(waves, [0, obj_enemy_chaser, 2, 150])
ds_list_add(waves, [0, obj_enemy_chaser, 3, 200])
ds_list_add(waves, [0, obj_enemy_chaser, 4, 250])
ds_list_add(waves, [0, obj_enemy_chaser, 5, 300])
ds_list_add(waves, [0, obj_enemy_chaser, 6, 450])
ds_list_add(waves, [0, obj_enemy_chaser, 7, 500])
ds_list_add(waves, [0, obj_enemy_chaser, 1, 550])
ds_list_add(waves, [0, obj_enemy_chaser, 2, 600])

ds_list_add(waves, [0, obj_enemy_dasher, 0, 1800])
ds_list_add(waves, [0, obj_enemy_dasher, 2, 1800])


ds_list_add(waves, [0, obj_enemy_dasher, 0, 2000])
ds_list_add(waves, [0, obj_enemy_dasher, 2, 2000])


ds_list_add(waves, [0, obj_enemy_boss_phase1, 1, 600])

// Spawn points
spawn[0,0] = 0  //x coordinate of first spawn TOP LEFT
spawn[0,1] = 0  //y coordinate of first spawn

spawn[1,0] = 420  //x coordinate of third spawn MIDDLE TOP
spawn[1,1] = 0  //y coordinate of third spawn

spawn[2,0] = 955  //x coordinate of second spawn TOP RIGHT
spawn[2,1] = 0  //y coordinate of second spawn

spawn[3,0] = 0  //x coordinate of third spawn BOTTOM LEFT
spawn[3,1] = 550  //y coordinate of third spawn

spawn[4,0] = 0  //x coordinate of first spawn MIDDLE LEFT
spawn[4,1] = 290  //y coordinate of first spawn

spawn[5,0] = 955  //x coordinate of fourth spawn BOTTOM RIGHT
spawn[5,1] = 550  //y coordinate of fourth spawn

spawn[6,0] = 955  //x coordinate of second spawn MIDDLE RIGHT
spawn[6,1] = 290  //y coordinate of second spawn

spawn[7,0] = 420  //x coordinate of third spawn MIDDLE BOTTOM
spawn[7,1] = 580  //y coordinate of third spawn

spawn[8,0] = 480  //x coordinate of fourth spawn CENTER
spawn[8,1] = 280