// 14 - Guard ve Optional Binding örnekleri

// Sıfırdan Başlayanlar için En Basit Optional Binding
var sehir: String? = "Ankara"

if let mevcutSehir = sehir {
    print("Şehir: \(mevcutSehir)")
} else {
    print("Şehir bilgisi yok!")
}

// Optional Binding ile değeri olmayan bir örnek
var ulke: String? = nil

if let mevcutUlke = ulke {
    print("Ülke: \(mevcutUlke)")
} else {
    print("Ülke bilgisi yok!") // Çıktı: Ülke bilgisi yok!
}

// Guard ile fonksiyon örneği
func dogrula(yas: Int?) {
    guard let mevcutYas = yas else {
        print("Yaş girilmemiş!")
        return
    }
    print("Yaş: \(mevcutYas)")
}

dogrula(yas: nil)   // Çıktı: Yaş girilmemiş!
dogrula(yas: 22)    // Çıktı: Yaş: 22

// Mini Egzersiz: Birden fazla optional'ı kontrol et
var ad: String? = "Mehmet"
var soyad: String? = "Yılmaz"

if let a = ad, let s = soyad {
    print("Ad Soyad: \(a) \(s)")
} else {
    print("Bilgiler eksik!")
}