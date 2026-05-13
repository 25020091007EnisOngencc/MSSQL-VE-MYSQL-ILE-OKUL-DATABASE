-- 1. Veritabanı Oluşturma ve Kullanma
CREATE DATABASE IF NOT EXISTS Okul;
USE Okul;

-- 2. Tablo Oluşturma (Eğer tablo zaten varsa silip baştan oluşturur)
DROP TABLE IF EXISTS Ogrenciler;

CREATE TABLE Ogrenciler (
    OgrenciID INT AUTO_INCREMENT PRIMARY KEY,
    Ad VARCHAR(50) NOT NULL,
    Soyad VARCHAR(50) NOT NULL,
    Bolum VARCHAR(100),
    NotOrtalamasi DECIMAL(3,2)
);

-- 3. INSERT (Yeni Kayıt Ekleme)
-- Değerli bir yazılım mühendisi adayını da listeye ekliyoruz :)
INSERT INTO Ogrenciler (Ad, Soyad, Bolum, NotOrtalamasi)
VALUES 
    ('Enis', 'Öngenç', 'Yazılım Mühendisliği', 3.85),
    ('Ahmet', 'Yılmaz', 'Makine Mühendisliği', 2.90),
    ('Ayşe', 'Demir', 'Endüstri Mühendisliği', 3.40);

-- 4. SELECT (Tüm Verileri Okuma)
SELECT * FROM Ogrenciler;

-- 5. UPDATE (Veri Güncelleme)
-- Ahmet'in not ortalamasını güncelliyoruz
UPDATE Ogrenciler 
SET NotOrtalamasi = 3.10 
WHERE Ad = 'Ahmet' AND Soyad = 'Yılmaz';

-- 6. DELETE (Veri Silme)
-- Ayşe'nin kaydını siliyoruz
DELETE FROM Ogrenciler 
WHERE Ad = 'Ayşe' AND Soyad = 'Demir';

-- 7. Son Durumu Görmek İçin Tekrar SELECT
SELECT * FROM Ogrenciler;