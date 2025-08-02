// Basit tuple tanımlama
let adres = ("İstanbul", 34000)
print("Şehir: \(adres.0), Posta Kodu: \(adres.1)")

// İsimli tuple
let kitap = (ad: "Suç ve Ceza", sayfaSayisi: 670)
print("Kitap: \(kitap.ad), Sayfa Sayısı: \(kitap.sayfaSayisi)")

// Destructuring (Parçalama) örneği
let (isim, sayfa) = kitap
print("Kitap adı: \(isim), Sayfa sayısı: \(sayfa)")

// Nested (İç içe) tuple kullanımı örneği
let adres2 = (sehir: "İstanbul", postaKodu: 34000)
let kisi = (isim: "Ali", yas: 28, adres: adres2)
print("Kişi: \(kisi.isim), Yaş: \(kisi.yas), Şehir: \(kisi.adres.sehir), Posta Kodu: \(kisi.adres.postaKodu)")

// Fonksiyon ile tuple döndürme
func dogumTarihiVeYasi(yil: Int) -> (tarih: String, yas: Int) {
    let currentYear = 2025
    return ("\(yil)", currentYear - yil)
}
let bilgi = dogumTarihiVeYasi(yil: 1990)
print("Doğum yılı: \(bilgi.tarih), Yaş: \(bilgi.yas)")

// Fonksiyon parametresi olarak tuple alma
func yazdir(adres: (sehir: String, postaKodu: Int)) {
    print("Adres: \(adres.sehir), Posta Kodu: \(adres.postaKodu)")
}
let ev = (sehir: "Ankara", postaKodu: 6000)
yazdir(adres: ev)

// Tuple ile değer değiştirme (swap)
var a = 5
var b = 10
(a, b) = (b, a)
print("a: \(a), b: \(b)")

// Tuple ile switch-case kullanımı (pattern matching)
let nokta = (x: 0, y: 5)
switch nokta {
case (0, 0):
    print("Orijin noktası")
case (_, 0):
    print("X ekseni üzerinde")
case (0, _):
    print("Y ekseni üzerinde")
default:
    print("Koordinat düzlemi")
}

// Tuple array içinde kullanımı
let kitaplar = [("1984", "Orwell"), ("Sefiller", "Hugo")]
for (ad, yazar) in kitaplar {
    print("\(ad) - \(yazar)")
}

// Tuple ile dizi farkı
let tupleOrnek = (1, "iki", true)
// let diziOrnek = [1, "iki", true] // Hata: dizi tüm elemanları aynı tipte olmalı
