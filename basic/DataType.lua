-- Fungsi untuk mengecek apakah sebuah string merupakan angka integer
function isInteger(str)
    local num = tonumber(str)
    if num and math.floor(num) == num then
        return true
    end
    return false
end

-- Fungsi untuk mengecek apakah sebuah string merupakan angka decimal
function isDecimal(str)
    local num = tonumber(str)
    if num and math.floor(num) ~= num then
        return true
    end
    return false
end

-- Fungsi untuk mengecek apakah sebuah string merupakan boolean
function isBoolean(str)
    return str == "true" or str == "false"
end


