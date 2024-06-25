require("DataType")

-- Fungsi utama untuk menerima input dan mengecek tipe datanya
function main()
    print("Masukkan sebuah nilai:")
    local input = io.read()

    -- Mengecek apakah input adalah nil
    if input == nil then
        print("Nil value")
        return
    end

    -- Mengecek apakah input adalah integer
    if isInteger(input) then
        local num = tonumber(input)
        if num % 2 == 0 then
            print("Integer. Even value")
        else
            print("Integer. Odd value")
        end
        return
    end

    -- Mengecek apakah input adalah decimal
    if isDecimal(input) then
        print("Decimal value")
        return
    end

    -- Mengecek apakah input adalah boolean
    if isBoolean(input) then
        print("Input adalah boolean")
        return
    end

    -- Mengecek apakah input adalah string
    if type(input) == "string" then
        print("Input adalah string")
        return
    end

    print("Input tidak dikenali")
end

-- Menjalankan fungsi utama
main()