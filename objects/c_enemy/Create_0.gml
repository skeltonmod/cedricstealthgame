// AGGRESSIVE ENEMY
// (runs around map searching for the player, then attacks the player if sighted)

// Initialize the path and store the id in a variable
path_id = path_add()

// Set the variables used in the AI
next_point = 0
max_points = 0
moving = 0
dir = 0
enemy_nearest = noone
enemy_in_sight = 0
enemy_angle = 0
can_move = 0
can_spot = 1
can_shoot = 0
gx = 0
gy = 0

// Set variables (these ones can be adjusted to taylor your AI) - fun to mess around with. Try adjusting some values.
hp = 100                // Health
spotted = 0             // If you make this value start on 1, then the enemy knows where you are right from the start. (he knows where you live! 0_0)
move_speed = 1        // Self explanitory
turn_speed = 0.15       // How fast the AI turns (its not really a speed, more of a sensitivity)
pause_time = 20         // Minimum time that the enemy will spend to stop and look around (when not alert of player)
max_range = 64         // AI only fires when enemy is within this range
max_view_angle = 90     // this value is basically the angle of the view cone divided by 2. i.e. if you 360� vision, put 180
shoot_speed = 25       // Minimum time the AI will pause for in between firing shots.
shoot_speed_random = 10 // (random time which is added on, more means less regular shooting pattern)
inaccuracy = 15          // we dont want the enemy being too accurate at shooting ^_^
critical_health = 40    // (if hp gets lower or equal, then AI tries to take cover if you fire at them.
bravery = 7             // the lower this value is, the more the AI runs away like a sissy (this is fun to mess around with)
prec_wall_collision = 0 // shouldn't really be changed unless you know what you are doing.
team_alert = 0          // team_alert defines whether or not one enemy can alert the rest of the team of you and your location

// These values can be changed if your object names are different to mine. This makes putting this AI into your game alot easier. 
// See, I think about these things. <.<
// (if there is multiple objects for these (such as bullets), then you will have to make a parent object, and use that (Like I did with obj_block_par))
my_enemy = c_cedric;
wall_parent = static_parent;
bullet = c_bullet;
ally = c_enemy;

// set move alarm
alarm[1] = pause_time;