// [wave, type, spawnpoint, delay]

waves = ds_list_create()

// Wave 0
ds_list_add(waves, [0, obj_enemy_simple, 0, 0])
ds_list_add(waves, [0, obj_enemy_simple, 0, 50])
ds_list_add(waves, [0, obj_enemy_simple, 1, 100])

// Wave 1
ds_list_add(waves, [1, obj_enemy_simple, 1, 10])
ds_list_add(waves, [1, obj_enemy_simple, 1, 20])
ds_list_add(waves, [1, obj_enemy_simple, 1, 30])

// Spawn points
spawn[0,0] = 800  //x coordinate of first spawn
spawn[0,1] = 90  //y coordinate of first spawn

spawn[1,0] = 150  //x coordinate of second spawn
spawn[1,1] = 450  //y coordinate of second spawn