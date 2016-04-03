var base_width = 1920;
var base_height = 1080;
var aspect = display_get_width() / display_get_height();

display_set_gui_size(base_height * aspect, base_height);
