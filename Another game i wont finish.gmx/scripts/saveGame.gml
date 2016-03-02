if (file_exists("Save.sav")) file_delete("Save.sav");
ini_open("Save.sav");
//var SavedPoints = base64_encode(string(global.points));
ini_write_string("Save", "room", string(room));
//ini_write_string("Save", "points", SavedPoints);
ini_close();
