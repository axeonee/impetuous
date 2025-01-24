// [wave, type, spawnpoint, delay]

waves = ds_list_create()

// Wave 0
ds_list_add(waves, [0, obj_enemy_simple, 0, 0])
ds_list_add(waves, [0, obj_enemy_simple, 0, 200])
ds_list_add(waves, [0, obj_enemy_simple, 0, 400])
ds_list_add(waves, [0, obj_enemy_simple, 1, 50])
ds_list_add(waves, [0, obj_enemy_simple, 1, 100])
ds_list_add(waves, [0, obj_enemy_simple, 1, 300])

//Wave 1
ds_list_add(waves, [1, obj_enemy_chaser, 0, 10])
ds_list_add(waves, [1, obj_enemy_chaser, 1, 20])
ds_list_add(waves, [1, obj_enemy_chaser, 2, 30])
ds_list_add(waves, [1, obj_enemy_dasher, 1, 100])
ds_list_add(waves, [1, obj_enemy_dasher, 1, 120])
ds_list_add(waves, [1, obj_enemy_dasher, 2, 140])

//Wave 2
ds_list_add(waves, [2, obj_enemy_simple, 0, 0])
ds_list_add(waves, [2, obj_enemy_simple, 1, 0])
ds_list_add(waves, [2, obj_enemy_simple, 2, 0])
ds_list_add(waves, [2, obj_enemy_simple, 3, 0])

//Wave 3
ds_list_add(waves, [3, obj_enemy_chaser, 0, 0])
ds_list_add(waves, [3, obj_enemy_dasher, 0, 30])
ds_list_add(waves, [3, obj_enemy_chaser, 1, 0])
ds_list_add(waves, [3, obj_enemy_dasher, 1, 30])
ds_list_add(waves, [3, obj_enemy_ranger, 2, 200])
ds_list_add(waves, [3, obj_enemy_ranger, 3, 200])

//End waves
ds_list_add(waves, [4, obj_healing, 4, 0])

// Spawn points
spawn[0,0] = 0  //x coordinate of first spawn MIDDLE LEFT
spawn[0,1] = 290  //y coordinate of first spawn

spawn[1,0] = 955  //x coordinate of second spawn MIDDLE RIGHT
spawn[1,1] = 290  //y coordinate of second spawn

spawn[2,0] = 420  //x coordinate of third spawn MIDDLE TOP
spawn[2,1] = 0  //y coordinate of third spawn

spawn[3,0] = 420  //x coordinate of third spawn MIDDLE BOTTOM
spawn[3,1] = 580  //y coordinate of third spawn

spawn[4,0] = 480  //x coordinate of fourth spawn CENTER
spawn[4,1] = 280  //y coordinate of fourth spawn