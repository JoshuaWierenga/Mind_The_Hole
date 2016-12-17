if (file_exists("save"))
{
       load_File = file_text_open_read("save");
       load_Current_Room = file_text_read_real(load_File);
       file_text_close(load_File);
       if (load_Current_Room <= room_last)
       {
        return room_last;
       }
}

return 0;
