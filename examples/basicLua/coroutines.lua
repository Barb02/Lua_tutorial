-- Coroutines são como threads, com a diferença de que não podem ser executadas em paralelo
-- Uma coroutine possui os estados de running, suspended, dead ou normal

-- Usar "create" para criar uma que execute alguma ação
co = coroutine.create(function()
    for i = 1, 10, 1 do
    print(i)
    print(coroutine.status(co))
    if i == 5 then coroutine.yield() end
    end
end)

-- Status inicial: suspended
print(coroutine.status(co))

-- Executar: resume(). Muda o status para running
coroutine.resume(co)

-- Yeld faz ela suspender a execução e mudar o status para suspended
print(coroutine.status(co))

co2 = coroutine.create(function()
    for i = 101, 110, 1 do
        print(i)
    end
end)

coroutine.resume(co2)
coroutine.resume(co)

-- Após a execução, ela possui o status de dead
print(coroutine.status(co))