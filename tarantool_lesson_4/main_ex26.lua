local config = require("ex26") -- подключения конфига

box.cfg(config)


print("listen: ")
print(box.cfg.listen)
print("\n")

print("work_dir: ")
print(box.cfg.work_dir)
print("\n")

print("wal_dir: ")
print(box.cfg.wal_dir)
print("\n")

print("memtx_dir: ")
print(box.cfg.memtx_dir)
print("\n")


