-- В чём разница между выполнением команды
--tarantool -e 'box.cfg{listen=3301}'

--и команды
--tarantool -e 'box.cfg{listen=3301}' -i


-- tarantool -i = enter interactive mode after executing 'SCRIPT' - вход в интерактивный режим после подключения скрипта 
-- tarantool -e  = EXPR execute string 'EXPR'-  выполняет (вызывает) строку


-- В первом случае тарантул просто запускается как база данных, а вр втором он еще в ходит в интерактиный режим (с возможностью воодить команды)