local config = require("ex26") -- подключения конфига

box.cfg(config)


io.write("listen: ")
io.write(box.cfg.listen)
io.write("\n")

io.write("work_dir: ")
io.write(box.cfg.work_dir)
io.write("\n")

io.write("wal_dir: ")
io.write(box.cfg.wal_dir)
io.write("\n")

io.write("snap_dir: ")
io.write(box.cfg.snap_dir)
io.write("\n")


-- ругается на snap_dir 
--  main_ex26.lua:19: bad argument #1 to 'write' (string expected, got nil)