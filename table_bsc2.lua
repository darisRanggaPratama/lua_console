-- Membuat tabel kosong untuk menyimpan data
local pegawai = {}

-- Fungsi untuk menambahkan data (Create)
local function tambahData(nama, usia)
    local data = {nama = nama, usia = usia}
    table.insert(pegawai, data)
end

-- Fungsi untuk membaca data (Read)
local function bacaData(index)
    if pegawai[index] then
        return pegawai[index]
    else
        return nil
    end
end

-- Fungsi untuk mengupdate data (Update)
local function ubahData(index, namaBaru, usiaBaru)
    if pegawai[index] then
        pegawai[index].nama = namaBaru
        pegawai[index].usia = usiaBaru
        return true
    else
        return false
    end
end

-- Fungsi untuk menghapus data (Delete)
local function hapusData(index)
    if pegawai[index] then
        table.remove(pegawai, index)
        return true
    else
        return false
    end
end

-- Menambahkan data ke dalam tabel
tambahData("Eren", 20)
tambahData("Mikasa", 21)
tambahData("Armin", 19)

-- Mencetak isi tabel 
print("\nIsi tabel:")
for i, data in ipairs(pegawai) do
    print("\nData ke-" .. i)
    print("Nama: " .. data.nama)
    print("Usia: " .. data.usia)
end

-- Membaca data dari tabel
local dataRead = bacaData(1)
if dataRead then
    print("\nRead Data:")
    print("Nama: " .. dataRead.nama)
    print("Usia: " .. dataRead.usia)
else
    print("\nData tidak ditemukan")
end

-- Mengupdate data dalam tabel
if ubahData(2, "Alicia", 26) then
    print("\nData berhasil diupdate")
else
    print("\nData tidak ditemukan")
end

-- Menghapus data dari tabel
if hapusData(3) then
    print("\nData berhasil dihapus")
else
    print("\nData tidak ditemukan")
end

-- Mencetak isi tabel setelah operasi CRUD
print("\nIsi tabel setelah operasi CRUD:")
for i, data in ipairs(pegawai) do
    print("\nData ke-" .. i)
    print("Nama: " .. data.nama)
    print("Usia: " .. data.usia)
end
