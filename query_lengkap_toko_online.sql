-- membuat database 'toko_online'
CREATE DATABASE toko_online;

-- masuk ke database 'toko_online'
USE toko_online;

-- membuat tabel
CREATE TABLE kategori (
  id INT NOT NULL,
  nama VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE pelanggan (
  id INT NOT NULL,
  nama VARCHAR(255) NOT NULL,
  no_hp VARCHAR(15) NOT NULL,
  alamat TEXT,
  PRIMARY KEY (id)
);

CREATE TABLE produk (
  id INT NOT NULL,
  nama VARCHAR(255) NOT NULL,
  harga INT NOT NULL,
  deskripsi TEXT,
  kategori_id INT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (kategori_id) REFERENCES kategori(id)
);

CREATE TABLE transaksi (
  id INT NOT NULL,
  pelanggan_id INT NOT NULL,
  produk_id INT NOT NULL,
  jumlah INT NOT NULL,
  total_harga INT NOT NULL,
  tanggal DATE NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (pelanggan_id) REFERENCES pelanggan(id),
  FOREIGN KEY (produk_id) REFERENCES produk(id)
);

-- mengisikan data ke tabel
INSERT INTO kategori (id, nama)
VALUES 
(1, 'Elektronik'),
(2, 'Pakaian'),
(3, 'Makanan'),
(4, 'Minuman'),
(5, 'Aksesoris'),
(6, 'Kesehatan'),
(7, 'Perawatan Diri'),
(8, 'Olahraga'),
(9, 'Hobi'),
(10, 'Mainan');

INSERT INTO pelanggan (id, nama, no_hp, alamat)
VALUES 
(1, 'John Doe', '08123456789', 'Jalan Merdeka No. 10'),
(2, 'Jane Smith', '08567891234', 'Jalan Asia Afrika No. 8'),
(3, 'Bob Johnson', '08987654321', 'Jalan Sudirman No. 5'),
(4, 'Alice Brown', '08765432109', 'Jalan Gatot Subroto No.3'),
(5, 'Charlie Lee', '08234567890', 'Jalan Dago No. 15'),
(6, 'Sarah Tan', '08121212121', 'Jalan Cipaganti No. 23'),
(7, 'David Wang', '08333333333', 'Jalan Tamansari No. 12'),
(8, 'Lisa Chen', '08111111111', 'Jalan Cihampelas No. 7'),
(9, 'Brian Lee', '08777777777', 'Jalan Sunda No. 17'),
(10, 'Olivia Ng', '08123456789', 'Jalan Braga No. 2');

INSERT INTO produk (id, nama, harga, deskripsi, kategori_id)
VALUES 
(1, 'iPhone 12', 15000, 'Smartphone terbaru dari Apple', 1),
(2, 'Samsung Galaxy S21', 13000, 'Smartphone terbaru dari Samsung', 1),
(3, 'Sony PlayStation 5', 7500, 'Konsol game generasi terbaru dari Sony', 9),
(4, 'Nike Air Force 1', 1000, 'Sepatu olahraga dari Nike', 8),
(5, 'Adidas Ultraboost 21', 1200, 'Sepatu olahraga dari Adidas', 8),
(6, 'Uniqlo U Crew Neck T-Shirt', 200, 'Kaos dari Uniqlo', 2),
(7, 'Levi\'s 501 Original Fit', 800, 'Celana jeans dari Levi\'s', 2),
(8, 'Indomie Mi Goreng', 5000, 'Mie instan rasa goreng dari Indomie', 3),
(9, 'KitKat Chunky', 3000, 'Permen coklat dari Nestle', 4),
(10, 'Coca-Cola', 4000, 'Minuman bersoda', 4),
(11, 'Asus ROG Zephyrus G14', 18000, 'Laptop gaming terbaru dari Asus', 1),
(12, 'Dell XPS 13', 16000, 'Laptop tipis dan ringan dari Dell', 1),
(13, 'LG OLED CX Series', 17000, 'TV OLED terbaru dari LG', 1),
(14, 'GoPro HERO9 Black', 5000, 'Kamera action terbaru dari GoPro', 5),
(15, 'Apple AirPods Pro', 3500, 'Earbuds nirkabel terbaru dari Apple', 1),
(16, 'Razer DeathAdder V2 Pro', 800, 'Mouse gaming nirkabel dari Razer', 5),
(17, 'Logitech G Pro X Mechanical', 1200, 'Keyboard gaming mekanikal dari Logitech', 5),
(18, 'Apple Watch Series 6', 6000, 'Smartwatch terbaru dari Apple', 1),
(19, 'Fitbit Charge 4', 2000, 'Tracker aktivitas dan kesehatan dari Fitbit', 6),
(20, 'Philips Sonicare DiamondClean', 3000, 'Sikat gigi elektrik dari Philips', 7),
(21, 'Clinique Moisture Surge 72H', 800, 'Pelembab wajah dari Clinique', 7),
(22, 'L\'Oréal Paris Revitalift', 600, 'Serum anti-aging dari L\'Oréal', 7),
(23, 'La Roche-Posay Anthelios', 300, 'Sunscreen dari La Roche-Posay', 7),
(24, 'BSN Syntha-6', 400, 'Suplemen protein dari BSN', 6),
(25, 'Optimum Nutrition Gold Standard', 500, 'Suplemen protein dari Optimum Nutrition', 6),
(26, 'Wilson Clash 100', 2000, 'Raket tenis dari Wilson', 8),
(27, 'Callaway Mavrik', 3000, 'Driver golf dari Callaway', 8),
(28, 'Rawlings Pro Preferred', 1000, 'Sarung tangan bisbol dari Rawlings', 8),
(29, 'Easton Ghost Double Barrel', 2000, 'Tongkat softball dari Easton', 8),
(30, 'LEGO Creator Expert Taj Mahal', 5000, 'Set bangunan LEGO', 10),
(31, 'Babolat Pure Aero', 2500, 'Raket tenis dari Babolat', 8),
(32, 'Yonex Arcsaber 11', 1500, 'Raket bulutangkis dari Yonex', 8),
(33, 'Mikasa MVA200', 1000, 'Bola voli resmi dari Mikasa', 8),
(34, 'Molten GG7X', 800, 'Bola basket resmi dari Molten', 8),
(35, 'JBL Flip 5', 1500, 'Speaker bluetooth dari JBL', 5),
(36, 'Sony WH-1000XM4', 4000, 'Headphone nirkabel dari Sony', 1),
(37, 'Beats Studio3 Wireless', 3500, 'Headphone nirkabel dari Beats', 1),
(38, 'Garmin Forerunner 945', 6000, 'Smartwatch GPS dari Garmin', 6),
(39, 'Polar Vantage V2', 5000, 'Smartwatch olahraga dari Polar', 6),
(40, 'Thule Subterra Backpack', 1000, 'Tas ransel dari Thule', 9),
(41, 'Herschel Little America', 800, 'Tas ransel dari Herschel', 9),
(42, 'Jansport SuperBreak', 400, 'Tas ransel dari Jansport', 9),
(43, 'Samsonite Omni PC', 3000, 'Koper dari Samsonite', 9),
(44, 'American Tourister Moonlight', 1500, 'Koper dari American Tourister', 9),
(45, 'Traveloka Travel Pillow', 150, 'Tempat tidur leher untuk perjalanan', 9),
(46, 'KAI Shun Classic Chef''s Knife', 3000, 'Pisau dapur dari KAI', 9),
(47, 'Tefal Jamie Oliver Frypan', 500, 'Panci dari Tefal', 9),
(48, 'Zojirushi NS-ZCC18', 2500, 'Rice cooker dari Zojirushi', 9),
(49, 'Smeg Stand Mixer', 6000, 'Mixer dari Smeg', 9),
(50, 'Nespresso Essenza Mini', 1500, 'Mesin kopi dari Nespresso', 4);

INSERT INTO transaksi (id, pelanggan_id, produk_id, jumlah, total_harga, tanggal) VALUES
(1, 1, 1, 2, 36000, '2023-01-05'),
(2, 2, 2, 1, 16000, '2023-01-10'),
(3, 3, 3, 1, 17000, '2023-01-15'),
(4, 4, 4, 1, 5000, '2023-01-20'),
(5, 5, 5, 2, 7000, '2023-01-25'),
(6, 6, 6, 1, 800, '2023-01-30'),
(7, 7, 7, 1, 1200, '2023-02-04'),
(8, 8, 8, 1, 6000, '2023-02-09'),
(9, 9, 9, 1, 2000, '2023-02-14'),
(10, 10, 10, 1, 3000, '2023-02-19'),
(11, 1, 11, 2, 36000, '2023-02-24'),
(12, 2, 12, 1, 16000, '2023-03-01'),
(13, 3, 13, 1, 17000, '2023-03-06'),
(14, 4, 14, 1, 5000, '2023-03-11'),
(15, 5, 15, 2, 7000, '2023-03-16'),
(16, 6, 16, 1, 800, '2023-03-21'),
(17, 7, 17, 1, 1200, '2023-03-26'),
(18, 8, 18, 1, 6000, '2023-03-31'),
(19, 9, 19, 1, 2000, '2023-04-05'),
(20, 10, 20, 1, 3000, '2023-04-10'),
(21, 1, 21, 2, 1600, '2023-04-15'),
(22, 2, 22, 1, 600, '2023-04-20'),
(23, 3, 23, 1, 300, '2023-04-25'),
(24, 4, 24, 1, 400, '2023-04-30'),
(25, 5, 25, 2, 1000, '2023-05-05'),
(26, 6, 26, 1, 2000, '2023-05-10'),
(27, 7, 27, 1, 3000, '2023-05-15'),
(28, 8, 28, 1, 1000, '2023-05-20'),
(29, 9, 29, 1, 2000, '2023-05-25'),
(30, 10, 30, 1, 5000, '2023-05-30');

-- melihat data
SELECT * FROM kategori;
SELECT * FROM pelanggan;
SELECT * FROM produk;
SELECT * FROM transaksi;

-- merubah data
UPDATE kategori SET nama = 'Komputer' WHERE id = 1;
UPDATE pelanggan SET nama = 'John Wick', no_hp = '08123456788', alamat = 'Jalan Merdeka No. 11' WHERE id = 1;
UPDATE produk SET nama = 'MacBook Pro', harga = 20000, deskripsi = 'Laptop terbaru dari Apple' WHERE id = 1;
UPDATE transaksi SET jumlah = 2, total_harga = 30000 WHERE id = 1;

-- menghapus data
DELETE FROM transaksi WHERE id = 1;
DELETE FROM produk WHERE id = 1;
DELETE FROM kategori WHERE id = 1;
DELETE FROM pelanggan WHERE id = 1;

-- menghapus tabel
DROP TABLE IF EXISTS transaksi;
DROP TABLE IF EXISTS produk;
DROP TABLE IF EXISTS kategori;
DROP TABLE IF EXISTS pelanggan;

-- menghapus database
DROP DATABASE toko_online;

-- kasus
-- 1 pelanggan membeli 3 barang yang berbeda.
SELECT p.nama AS 'Nama Pelanggan'
FROM pelanggan p
JOIN transaksi t ON p.id = t.pelanggan_id
GROUP BY p.id
HAVING COUNT(DISTINCT t.produk_id) = 3;

-- Melihat 3 produk yang paling sering dibeli oleh pelanggan.
SELECT pr.nama AS 'Nama Produk', COUNT(*) AS 'Jumlah Pembelian'
FROM transaksi t
JOIN produk pr ON t.produk_id = pr.id
GROUP BY t.produk_id
ORDER BY COUNT(*) DESC
LIMIT 3;

-- Melihat Kategori barang yang paling banyak barangnya.
SELECT k.nama AS 'Nama Kategori', COUNT(*) AS 'Jumlah Barang'
FROM produk p
JOIN kategori k ON p.kategori_id = k.id
GROUP BY k.id
ORDER BY COUNT(*) DESC
LIMIT 1;

-- Nominal rata-rata transaksi yang dilakukan oleh pelanggan dalam 1 bulan terakhir.
SELECT pelanggan_id, AVG(total_harga) AS rata_rata_transaksi
FROM transaksi
WHERE tanggal >= DATE_SUB(CURDATE(), INTERVAL 1 MONTH)
GROUP BY pelanggan_id;