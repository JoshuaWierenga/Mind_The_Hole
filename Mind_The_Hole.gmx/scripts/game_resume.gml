//call this script to resume the game.

if(!paused) exit;

//Free the background from memory:
if background_exists(pause_BG) background_delete(pause_BG);
pause_surface = -1;

//Activate all instances:
instance_activate_all();

paused = false;
