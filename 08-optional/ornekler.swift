// 08 - Optional (Seçimli) Tipler - Detaylı Swift Örnekleri

// 1. Optional değişken tanımı
var isim: String? = "Ali"
var yas: Int? = nil

// 2. Optional değişkenlerin kontrolü
if isim != nil {
    print("İsim var: \(isim!)") // Zorla açma (!)
} else {
    print("İsim girilmemiş.")
}

// 3. Optional binding (if let)
if let gercekIsim = isim {
    print("Hoş geldin, \(gercekIsim)")
} else {
    print("İsim bulunamadı.")
}

// 4. Optional binding (guard let) fonksiyon içinde
func kullaniciSelamla(isim: String?) {
    guard let ad = isim else {
        print("İsim yok!")
        return
    }
    print("Merhaba \(ad)")
}

kullaniciSelamla(isim: "Mehmet") // Merhaba Mehmet
kullaniciSelamla(isim: nil)      // İsim yok!

// 5. Nil-coalescing operator (??)
var sehir: String? = nil
print(sehir ?? "Bilinmiyor") // Bilinmiyor

sehir = "Ankara"
print(sehir ?? "Bilinmiyor") // Ankara

// 6. Optional chaining
struct Kisi {
    var ad: String
    var telefon: String?
}

let ayse = Kisi(ad: "Ayşe", telefon: nil)
print(ayse.telefon?.count) // nil

let veli = Kisi(ad: "Veli", telefon: "05551234567")
print(veli.telefon?.count) // 11

// 7. Bir örnek: Formdan gelen veri
var email: String? = nil

if let eposta = email {
    print("E-posta: \(eposta)")
} else {
    print("E-posta girilmedi.")
}

// 8. Zorla açma riskli kullanım
var not: Int? = nil
// print(not!) // HATA: runtime crash olur

not = 80
print(not!) // 80

// 9. Fonksiyonda optional parametre
func adSoyadYazdir(ad: String?, soyad: String?) {
    if let a = ad, let s = soyad {
        print("Ad Soyad: \(a) \(s)")
    } else {
        print("Ad veya soyad eksik!")
    }
}

adSoyadYazdir(ad: "Zeynep", soyad: nil) // Ad veya soyad eksik!
adSoyadYazdir(ad: "Zeynep", soyad: "Demir") // Ad Soyad: Zeynep Demir