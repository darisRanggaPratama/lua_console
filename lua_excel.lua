-- Mengimpor pustaka LuaExcel untuk bekerja dengan file Excel
local excel = require("luaxls")

-- Membuka file Excel
local workbook = excel.open("sample.xlsx")

-- Mengakses lembar kerja pertama
local worksheet = workbook[1]

-- Mendapatkan jumlah baris dan kolom dalam lembar kerja
local total_rows = worksheet:rows()
local total_columns = worksheet:cols()

-- Inisialisasi daftar untuk menyimpan nilai negatif
local negative_values = {}

-- Iterasi melalui sel-sel di lembar kerja
for row = 1, total_rows do
    for col = 1, total_columns do
        local cell_value = worksheet:read(row, col)
        if type(cell_value) == "number" and cell_value < 0 then
            -- Menyimpan nilai negatif ke dalam daftar
            table.insert(negative_values, {
                row = row,
                column = col,
                value = cell_value
            })
        end
    end
end

-- Menampilkan nilai negatif yang ditemukan
if #negative_values > 0 then
    print("Nilai negatif ditemukan di sel-sel berikut:")
    for _, data in ipairs(negative_values) do
        print(string.format("Baris %d, Kolom %d: %f", data.row, data.column, data.value))
    end
else
    print("Tidak ada nilai negatif yang ditemukan di lembar kerja ini.")
end

-- Menutup file Excel
workbook:close()
