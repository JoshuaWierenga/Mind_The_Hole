///Save_Game(level)
if (file_exists("save"))
{
    file_delete("save");
}

save_File = file_text_open_write("save");
file_text_write_real(save_File, argument0);
file_text_close(save_File);
