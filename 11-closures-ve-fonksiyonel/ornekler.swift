// Basit bir closure tanımı ve çağırılması
let selamla = {
    print("Merhaba Swift!")
}
selamla() // Çıktı: Merhaba Swift!

// Parametre alan ve değer döndüren closure
let topla: (Int, Int) -> Int = { a, b in
    return a + b
}
let sonuc = topla(3, 5) // sonuc = 8
print("Toplam: \(sonuc)")

// Dizideki tüm elemanları 2 ile çarpma (map fonksiyonu ile closure kullanımı)
let sayilar = [1, 2, 3, 4]
let ikiKat = sayilar.map { $0 * 2 }
print("İkiyle Çarpılmışlar: \(ikiKat)") // [2, 4, 6, 8]

// Dizideki çift sayıları filtreleme (filter fonksiyonu ile closure kullanımı)
let ciftler = sayilar.filter { $0 % 2 == 0 }
print("Çiftler: \(ciftler)") // [2, 4]

// Dizideki tüm elemanların toplamı (reduce fonksiyonu ile closure kullanımı)
let toplam = sayilar.reduce(0) { $0 + $1 }
print("Toplam: \(toplam)") // 10

// Egzersiz 1: Tüm negatif sayıları pozitif yap
let karisikSayilar = [-3, 5, -2, 8]
let pozitifler = karisikSayilar.map { abs($0) }
print("Pozitifler: \(pozitifler)") // [3, 5, 2, 8]

// Egzersiz 2: En büyük sayıyı closure ve reduce ile bul
let enBuyuk = karisikSayilar.reduce(karisikSayilar[0]) { max($0, $1) }
print("En Büyük: \(enBuyuk)") // 8

// Egzersiz 3: İki string’i birleştiren closure
let birlestir: (String, String) -> String = { s1, s2 in
    return s1 + s2
}
let sonucStr = birlestir("Swift", " Öğreniyorum")
print(sonucStr) // Swift Öğreniyorum
