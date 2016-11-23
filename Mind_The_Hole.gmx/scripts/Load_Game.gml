if (file_exists("save.save"))
{
       load_File = file_text_open_read("save.save");
       load_Current_Room = file_text_read_real(load_File);
       file_text_close(load_File);
       
}
