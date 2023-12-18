--[[
    Exerício: Contar o número de ocorrências de cada algarismo na lista e armazenar os valores em uma tabela
    em forma de array associativo.
]]

print("----------------- SOLUÇÃO 1 ------------------\n")

algarismos = {1, 2, 3, 4, 5, 3, 2, 5, 9, 1, 0, 1, 3, 4, 7}

countAlgs = {}

for i = 1, #algarismos do
    if countAlgs[algarismos[i]] == nil then
        countAlgs[algarismos[i]] = 1
    else
        countAlgs[algarismos[i]] = countAlgs[algarismos[i]] + 1
    end
end

-- print(table.concat(countAlgs)) 
-- Não funciona para esse exemplo pois os índices não são sequenciais (ex: 6 não aparece na lista)

for k,v in pairs(countAlgs) do
    print(k .. " : " .. v)
end

-- ou

print("\n----------------- SOLUÇÃO 2 ------------------\n")

countAlgs = {}

for k, v in pairs(algarismos) do
    if countAlgs[v] == nil then
        countAlgs[v] = 1
    else
        countAlgs[v] = countAlgs[v] + 1
    end
end

for k,v in pairs(countAlgs) do
    print(k .. " : " .. v)
end