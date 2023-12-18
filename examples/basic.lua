print("Hello lua!")
io.write("Lua is easy\n")

--[[
    Comentário multilinha
]]

a = 5
b = 10
print("a: " .. a .. " b: " .. b .. " a + b: " .. a+b) -- string concatenation

str = "lua"
print("Size of str: " .. #str)  -- lenght operator

-- If-else statements
exp = 10
degree = true
skills = 40
if degree and exp >= 100 then
    job = true
elseif degree and skills > 30 then
    job = true
else 
    job = false
end
print("Hired: " .. tostring(job)) -- tostring() converte para string

-- Nil
var = nil

print(var)

if var then 
    print("var is not nil")
else
    var = 10
end

print(var)

-- Loops

i = 1
while (i <= 10) do
    io.write(i)
    i = i + 1 -- i++ e i += 1 não existem em Lua
    -- continue não existe em Lua
    if i == 8 then break end
end

print()
 
-- Repeat-until corre o código pelo menos uma vez (do-while)
repeat
    io.write("Adivinhe um número entre 0 e 10: ")
    guess = io.read() -- Lê do terminal
until tonumber(guess) == 5 -- tonumber() converte para número

print("Acertou!")

-- For estilo "C": inicialização, condição, incremento
for i = 1, 10, 1 do
    io.write(i .. "-")
end

print()

-- Tables (tabelas)
print("================== Tables ==================")

-- Criar uma tabela
aTable = {}
 
-- Adicionar valores a uma tabela
for i = 1, 10 do
  aTable[i] = i
end
 
-- Acessar valor pelo índice (OBS: índices começam em 1)
io.write("First Item : ", aTable[1], "\n")
 
-- Número de itens na tabela
io.write("Number of Items : ", #aTable, "\n")
 
-- Inserir item na tabela: (tabela, índice, item)
table.insert(aTable, 1, 0)
 
-- Combina uma tabela como uma string e separa com o separador fornecido
print(table.concat(aTable, ", "))
 
-- Remover item no índice: (tabela, índice)
table.remove(aTable, 1)
print(table.concat(aTable, ", "))
 
-- Ordenar itens em ordem reversa
table.sort(aTable, function(a,b) return a>b end)
print(table.concat(aTable, ", "))
 
-- Criar uma tabela multidimensional
aMultiTable = {}
 
for i = 0, 9 do
  aMultiTable[i] = {}
  for j = 0, 9 do
    aMultiTable[i][j] = tostring(i) .. tostring(j)
  end
end

-- For estilo "foreach" (itera sobre uma tabela)
dias = {"Segunda", "Terça", "Quarta", "Quinta", "Sexta", "Sábado", "Domingo"}

for i, dia in pairs(dias) do
    print(i .. " - " .. dia)
end

-- Array associativo (aka Dicionário, Map, etc)
local teams = {
    ["teamA"] = 12,
    ["teamB"] = 15
}

print(teams["teamA"]) -- 12

for key,value in pairs(teams) do
  print(key .. " : " .. value)
end

-- Funções e scopes  

print("================== Funções ==================")

function getSum(num1, num2)
    return num1 + num2
end
   
print(string.format("5 + 2 = %d", getSum(5,2)))

-- A variável "i" só existe dentro da função
function func()
    local funcVar = 5
end

print(funcVar) 
   
function splitAndCount(str)
    local words = {} -- Table vazia
    local i = 1

    for word in string.gmatch(str, "[^%s]+") do  -- split a partir de espaços. gmatch retorna um iterador
        words[i] = word
        i = i + 1
    end

    -- Funções podem retornar mais de um valor
    return words, i
end
   
-- Recebe múltiplos valores
words, count = splitAndCount("Complementos sobre linguagens de programação")

for j = 1, count do
    print(string.format("%d : %s", j, words[j]))
end
   
  -- Variadic Function: recebe um número variável de argumentos
function getSumMore(...)
    local sum = 0

    for k, v in pairs{...} do
        sum = sum + v
    end
    return sum
end
   
io.write("Sum : ", getSumMore(1,2,3,4,5,6), "\n")
   
-- As funções podem ser tratadas como variáveis
-- Funções anónimas (ou lambda)
doubleIt = function(x) return x * 2 end
print("Dobro de 4: " .. doubleIt(4))