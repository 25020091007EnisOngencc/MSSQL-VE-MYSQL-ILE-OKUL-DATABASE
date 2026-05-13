-- Created by GitHub Copilot in SSMS - review carefully before executing
-- 1. Veritabanı Oluşturma ve Kullanma
USE master;
GO

IF EXISTS (SELECT name FROM sys.databases WHERE name = N'Okul')
BEGIN
    DROP DATABASE Okul;
END
GO

CREATE DATABASE Okul;
GO

USE Okul;
GO

-- 2. Tablo Oluşturma
DROP TABLE IF EXISTS dbo.Ogrenciler;
GO

CREATE TABLE dbo.Ogrenciler (
    OgrenciID INT IDENTITY(1,1) PRIMARY KEY,
    Ad NVARCHAR(50) NOT NULL,
    Soyad NVARCHAR(50) NOT NULL,
    Bolum NVARCHAR(100),
    NotOrtalamasi DECIMAL(3,2)
);
GO

-- 3. INSERT (Yeni Kayıt Ekleme)
INSERT INTO dbo.Ogrenciler (Ad, Soyad, Bolum, NotOrtalamasi)
VALUES 
    (N'Enis', N'Öngenç', N'Yazılım Mühendisliği', 3.85),
    (N'Ahmet', N'Yılmaz', N'Makine Mühendisliği', 2.90),
    (N'Ayşe', N'Demir', N'Endüstri Mühendisliği', 3.40);
GO

-- 4. SELECT (Tüm Verileri Okuma)
SELECT * FROM dbo.Ogrenciler;
GO

-- 5. UPDATE (Veri Güncelleme)
UPDATE dbo.Ogrenciler 
SET NotOrtalamasi = 3.10 
WHERE Ad = N'Ahmet' AND Soyad = N'Yılmaz';
GO

-- 6. DELETE (Veri Silme)
DELETE FROM dbo.Ogrenciler 
WHERE Ad = N'Ayşe' AND Soyad = N'Demir';
GO

-- 7. Son Durumu Görmek İçin Tekrar SELECT
SELECT * FROM dbo.Ogrenciler;
GO