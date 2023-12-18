-- Modos de acesso:
-- r: Somente leitura (padrão)
-- w: Sobrescrever ou criar um novo ficheiro
-- a: Append ou criar um novo ficheiro
-- r+: Ler e escrever em um ficheiro existente
-- w+: Sobrescrever, ler, ou criar um ficheiro
-- a+: Append, ler, ou criar um ficheiro

-- Criar um novo ficheiro para leitura e escrita
file = io.open("file.txt", "w+")

-- Escrever texto no ficheiro
file:write("Fly me to the moon\n")
file:write("And let me play along the stars\n")

-- Voltar para o início do ficheiro
file:seek("set", 0)

-- Ler do ficheiro 
print(file:read("a")) -- "a": ler o ficheiro todo

-- Fechar o ficheiro
file:close()

file = io.open("file.txt", "a+")

file:write("Let me see what spring is like on Jupiter and Mars\n")

file:seek("set", 0)

print(file:read("*a"))

file:close()


