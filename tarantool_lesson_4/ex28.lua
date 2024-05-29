-- Исправить ошибку в программе (предложить 2 варианта исправления):

box.cfg({
    listen = 3301
})
 
box.schema.space_create('person')

-- Исправленная версии:

-- 1
box.cfg {
    listen = "3301"
}

box.schema.space_create('person')

--2
box.cfg({
    listen = "3301",
})

box.schema.space_create("person")