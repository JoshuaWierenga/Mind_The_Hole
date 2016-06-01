var base_width = 1280;
var base_height = 720;
var aspect = display_get_width() / display_get_height();

display_set_gui_size(base_height * aspect, base_height);
