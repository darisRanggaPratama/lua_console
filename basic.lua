print("hai semua")

local a = 500
local b = 15
local c = 1234

print(a .. " + " .. b .. " = " .. a + b)

if a < b then
    print(b .. " - " .. a .. " = " .. b - a)
else
    print(a .. " - " .. b .. " = " .. a - b)
end

if a > b and b > c then
    print(a .. " - " .. b .. " - " .. c .. " = " .. a - b - c)
elseif b > a and b > c then
    print(b .. " - " .. a .. " - " .. c .. " = " .. b - a - c)
else
    print(c .. " - " .. b .. " - " .. a .. " = " .. c - b - a)
end

function kali(a, b)
    return a * b
    
end

local hasil = kali(15, 3)
print(hasil)

--[[
MULTI
LINE
COMMENT
]]

-- menit 18