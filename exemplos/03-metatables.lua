--[[
function Vetor2(x,y)
    return {x = x or 0, y = y or 0}
end

local a = Vetor2(5, 7)
local b = Vetor2(10, 3)
local c = Vetor2(0,0)

c = a + b -- Causa um erro pois se tenta fazer uma conta aritmética com valor de table
--]]

--[[ local Vetor2_meta = {
    __add = function(a, b)
        return Vetor2 (a.x + b.x, a.y + b.y)
    end,

    __sub = function(a, b)
        return Vetor2 (a.x - b.x, a.y - b.y)   
    end,

    __call = function (self, ...)
        print("{" .. self.x .. "," .. self.y .. "}")
    end,
    __tostring = function(self)
        return "{" .. self.x .. "," .. self.y .. "}"
    end, -- Caso não houvesse a sobrescrição do metametodo iria ser retornado o endereço da table. 
}

--]]


--[[
function Vetor2(x, y)
    local v = {x = x or 0 , y = y or 0}
    setmetatable(v, Vetor2_meta)
    return v
end

local a = Vetor2(5, 7)
local b = Vetor2(10, 3)
local soma = Vetor2(0, 0)
local subtracao = Vetor2(0, 0)

soma = a + b
subtracao = a - b

print(soma.x, soma.y)
print(subtracao.x, subtracao.y)

soma()
subtracao()
a()
b()

print("Vetor soma dos vetores A e B: ", soma)

--]]

--[[

function Vetor2 (x, y) end

local Vetor2_meta = {
    __index = function(self, index)
        print(index)
    end,

    __newindex == function (self, index)
        print(index)
    end 
}

local minhaTabela = {1, 2, 3}
setmetatable(minhaTabela, Vetor2_meta)
minhaTabela[3] = "Olá"

print(minhaTabela[2])

--]]

local Vetor2_meta = {
    __add = function(a, b)
        return Vetor2 (a.x + b.x, a.y + b.y)
    end,

    __sub = function(a, b)
        return Vetor2 (a.x - b.x, a.y - b.y)   
    end,

    __mul = function (a, b)
        return Vetor2 (a.x * b.x, a.y * b.y)
    end, 
    __call = function (self, ...)
        print("{" .. self.x .. "," .. self.y .. "}")
    end,
    __tostring = function(self)
        return "{" .. self.x .. "," .. self.y .. "}"
    end, -- Caso não houvesse a sobrescrição do metametodo iria ser retornado o endereço da table. 
}

function Vetor2(x, y)
    local v = {x = x or 0 , y = y or 0}
    setmetatable(v, Vetor2_meta)
    return v
end

local a = Vetor2(5, 7)
local b = Vetor2(10, 3)
local soma = Vetor2(0, 0)
local subtracao = Vetor2(0, 0)

soma = a + b -- soma de vetores
subtracao = a - b -- subtração de vetores

local produto = Vetor2(0,0)

produto = a * b -- Produto de vetores

print("Vetor soma dos vetores A e B: ", soma)
print("Vetor subtração dos vetores A e B: ", subtracao)
print("Vetor produto escalar dos vetores A e B: ", produto)