-- Membuat tabel kosong untuk menyimpan data dengan kunci (keys)
local staff = {}

-- Fungsi untuk menambahkan data (Create)
local function tambahData(id, nama, usia)
    local data = {nama = nama, usia = usia}
    staff[id] = data
end

-- Fungsi untuk membaca data (Read)
local function bacaData(id)
    return staff[id]
end

-- Fungsi untuk mengupdate data (Update)
local function ubahData(id, namaBaru, usiaBaru)
    if staff[id] then
        staff[id].nama = namaBaru
        staff[id].usia = usiaBaru
        return true
    else
        return false
    end
end

-- Fungsi untuk menghapus data (Delete)
local function hapusData(id)
    if staff[id] then
        staff[id] = nil
        return true
    else
        return false
    end
end

-- Menambahkan data ke dalam tabel dengan kunci (keys)
tambahData(1, "John", 30)
tambahData(2, "Alice", 25)
tambahData(3, "Bob", 35)
tambahData(4, "mikasa", 32)

-- Mencetak isi tabel
print("\nIsi tabel:")
for id, data in pairs(staff) do
    print("\nID: " .. id)
    print("Nama: " .. data.nama)
    print("Usia: " .. data.usia)
end

-- Membaca data dari tabel menggunakan kunci (keys)
local dataRead = bacaData(1)
if dataRead then
    print("\nData John:")
    print("Nama: " .. dataRead.nama)
    print("Usia: " .. dataRead.usia)
else
    print("Data tidak ditemukan")
end

-- Mengupdate data dalam tabel menggunakan kunci (keys)
if ubahData(2, "Alicia", 26) then
    print("\nData Alice berhasil diupdate")
else
    print("\nData Alice tidak ditemukan")
end

-- Menghapus data dari tabel menggunakan kunci (keys)
if hapusData(3) then
    print("\nData Bob berhasil dihapus")
else
    print("\nData Bob tidak ditemukan")
end

-- Mencetak isi tabel setelah operasi CRUD
print("\nIsi tabel setelah operasi CRUD:")
for id, data in pairs(staff) do
    print("\nID Staff: " .. id)
    print("Nama: " .. data.nama)
    print("Usia: " .. data.usia)
    end

