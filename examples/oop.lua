-- Classes podem ser implementadas a partir de tables, metatables e funções

Enemy = {}

function Enemy:new(lives)
    setmetatable(self, Enemy)  -- Sintaxe: setmetatable(table, metatable) -- Cria o objeto
    self.lives = lives or 3 -- valor por defeito
    self.full_hp = 100  
    self.hp = self.full_hp
    return self
end

function Enemy:receive_damage(damage) -- ou Enemy.receive_damage(self, damage)
    self.hp = self.hp - damage
    if self.hp <= 0 then
        self.lives = self.lives - 1
        self.hp = self.full_hp
    end
end

function Enemy:tostring()
    return "[Enemy] Lives: " .. self.lives .. ", HP: " .. self.hp
end


e1 = Enemy:new(nil) -- para usar valores por defeito, usar nil

print(e1.lives)  -- 3
print(e1.hp)  -- 100

print(e1:tostring())

e1:receive_damage(50)

print(e1:tostring()) -- lives 3, hp 50

e1:receive_damage(50)

print(e1:tostring()) -- lives 2, hp 100

-- Herança

Zombie = Enemy:new()

function Zombie:new(lives, speed)
    setmetatable(self, Zombie)
    self.lives = lives or 2
    self.full_hp = 150  
    self.hp = self.full_hp
    self.speed = speed or 20
    return self
end

-- Override
function Zombie:tostring()
    return "[Zombie] Lives: " .. self.lives .. ", HP: " .. self.hp .. ", Speed: " .. self.speed
end

z1 = Zombie:new(2, 20)

print(z1:tostring()) -- lives 2, hp 100, speed 20

z1:receive_damage(50)

print(z1:tostring()) -- lives 2, hp 50, speed 20