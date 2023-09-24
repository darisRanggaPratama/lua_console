-- Membuat tabel dua dimensi kosong
local laptop = {}

-- Fungsi untuk menambahkan data (Create)
local function tambahData(row, col, value)
    if not laptop[row] then
        laptop[row] = {} -- Buat baris jika belum ada
    end
    laptop[row][col] = value
end

-- Fungsi untuk membaca data (Read)
local function bacaData(row, col)
    if laptop[row] and laptop[row][col] then
        return laptop[row][col]
    else
        return "\nData tidak ada"
    end
end

-- Fungsi untuk mengupdate data (Update)
local function ubahData(row, col, newValue)
    if laptop[row] and laptop[row][col] then
        laptop[row][col] = newValue
    else
        print("\nData kosong")
    end
end

-- Fungsi untuk menghapus data (Delete)
local function hapusData(row, col)
    if laptop[row] and laptop[row][col] then
        laptop[row][col] = nil
    else
        print("\nData tidak ditemukan")
    end
end

-- Menambahkan data ke tabel dua dimensi
tambahData(1, 1, "Lenovo")
tambahData(1, 2, "Amerika Serikat")
tambahData(2, 1, "Samsung")
tambahData(2, 2, "Korea Selatan")

-- Mencetak isi tabel dua dimensi
print("\nIsi tabel dua dimensi:")
for row, cols in pairs(laptop) do
    for col, value in pairs(cols) do
        print("Baris " .. row .. ", Kolom " .. col .. ": " .. value)
    end
end

-- Membaca data dari tabel dua dimensi
print("\nData di baris 1, kolom 1: " .. bacaData(1, 1))
print("Data di baris 2, kolom 2: " .. bacaData(2, 2))
print("Data di baris 3, kolom 1: " .. bacaData(3, 1))

-- Mengupdate data dalam tabel dua dimensi
ubahData(1, 1, "Dell")
ubahData(2, 2, "Korsel")

-- Menghapus data dari tabel dua dimensi
hapusData(1, 2)
hapusData(3, 1)

-- Mencetak isi tabel dua dimensi
print("\nIsi tabel dua dimensi setelah operasi CRUD:")
for row, cols in pairs(laptop) do
    for col, value in pairs(cols) do
        print("Baris " .. row .. ", Kolom " .. col .. ": " .. value)
    end
end
