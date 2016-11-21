//call this script to pause the game

if(paused) exit;

//This code block takes a screenshot of the game to use as the pause background:
if(application_surface_is_enabled()) {
    var w, h, tempsurf;
    w = surface_get_width(application_surface);
    h = surface_get_height(application_surface);
    
    //This is to prevent alpha distortions that sometimes occur when copying the application surface:
    tempsurf = surface_create(w,h);
    surface_set_target(tempsurf);
    draw_clear(c_black);
    draw_set_colour_write_enable(true,true,true,false);
    draw_enable_alphablend(false);
    draw_surface(application_surface,0,0);
    draw_set_colour_write_enable(true,true,true,true);
    draw_enable_alphablend(true);
    surface_reset_target();
    
    pause_BG = background_create_from_surface(tempsurf,0,0,w,h,false,false);
    surface_free(tempsurf);
} else {
    //If you have disabled the application surface, we will take a screenshot in another way. 
    //IMPORTANT: screen_save() does not work on HTML5, so HTML5 games need to have the application surface enabled.
    screen_save("pauseBG.png");
    pause_BG = background_add("pauseBG.png",0,0)
}



//Next, all instances are deactivated, except for any instance with the "no_Pause_Object" parent.
instance_deactivate_all(true);
instance_activate_object(no_Pause_Object);

paused = true;
