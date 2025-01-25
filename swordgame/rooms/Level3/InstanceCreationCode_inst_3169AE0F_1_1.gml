// [wave, type, spawnpoint, delay]

waves = ds_list_create()

// Wave 0
ds_list_add(waves, [0, obj_enemy_chaser, 0, 0])
ds_list_add(waves, [0, obj_enemy_chaser, 1, 10])
ds_list_add(waves, [0, obj_enemy_chaser, 2, 20])
ds_list_add(waves, [0, obj_enemy_chaser, 3, 30])
ds_list_add(waves, [0, obj_enemy_chaser, 4, 40])
ds_list_add(waves, [0, obj_enemy_chaser, 5, 50])
ds_list_add(waves, [0, obj_enemy_chaser, 6, 60])
ds_list_add(waves, [0, obj_enemy_chaser, 7, 70])


// Wave 1
ds_list_add(waves, [1, obj_enemy_simple, 3, 10])
ds_list_add(waves, [1, obj_enemy_simple, 5, 10])
ds_list_add(waves, [1, obj_enemy_ranger, 0, 80])
ds_list_add(waves, [1, obj_enemy_ranger, 2, 80])

// Wave 2
ds_list_add(waves, [2, obj_enemy_ranger, 0, 0])
ds_list_add(waves, [2, obj_enemy_ranger, 2, 0])
ds_list_add(waves, [2, obj_enemy_ranger, 3, 70])
ds_list_add(waves, [2, obj_enemy_ranger, 5, 70])
ds_list_add(waves, [2, obj_enemy_simple, 0, 100])
ds_list_add(waves, [2, obj_enemy_simple, 2, 100])
ds_list_add(waves, [2, obj_enemy_simple, 3, 100])
ds_list_add(waves, [2, obj_enemy_simple, 5, 100])

// Wave 3
ds_list_add(waves, [3, obj_enemy_ranger, 4, 0])
ds_list_add(waves, [3, obj_enemy_ranger, 6, 0])
ds_list_add(waves, [3, obj_enemy_chaser, 1, 0])
ds_list_add(waves, [3, obj_enemy_chaser, 7, 0])
ds_list_add(waves, [3, obj_enemy_chaser, 1, 100])
ds_list_add(waves, [3, obj_enemy_chaser, 7, 100])

//End waves
ds_list_add(waves, [4, obj_healing, 8, 0])

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