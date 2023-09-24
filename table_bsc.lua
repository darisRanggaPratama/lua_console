-- Table as array
local buah = {"mangga", "pepaya", "jeruk", "nanas"}

-- Iterate array item
for index, fruit in ipairs(buah) do
    print("Buah ke-" .. index .. " : " .. fruit)
end

-- Add item
buah[6] = "leci"
buah[5] = "manggis"
table.insert(buah, "anggur")
table.insert(buah, 3, "jambu")

for i = 1, #buah do
    print("Buah ke - " .. i .. " : " .. buah[i])
end

-- Count array item
print("Jumlah item dalam array: " .. #buah)

-- Delete 1 item
table.remove(buah, 4)

-- Iterate array item
for i = 1, #buah do
    print("Buah ke - " .. i .. " : " .. buah[i])
end

