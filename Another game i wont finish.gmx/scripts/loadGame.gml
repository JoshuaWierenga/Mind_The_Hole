if (file_exists("Save.sav"))
{
    ini_open("Save.sav");
    var LoadedRoom = ini_read_string("Save", "room", 1);
    //var LoadedRoom - ini_read_string("Save, "points","0");
    ini_close();
    room_goto(real(LoadedRoom));    
}
else
{
   room_goto_next();
}
