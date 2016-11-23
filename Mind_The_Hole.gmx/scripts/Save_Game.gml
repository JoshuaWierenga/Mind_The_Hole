if (file_exists("save.save"))
{
    file_delete("save.save");
}

save_File = file_text_open_write("save.save");
save_Current_Room = room;
file_text_write_real(save_File, save_Current_Room);
file_text_close(save_File);
