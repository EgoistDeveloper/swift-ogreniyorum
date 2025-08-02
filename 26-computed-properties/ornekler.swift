// 1. Salt okunur computed property
struct Daire {
    var yaricap: Double
    var alan: Double {
        Double.pi * yaricap * yaricap
    }
}
let d = Daire(yaricap: 3)
print(d.alan) // 28.274...

// 2. Hem get hem set ile computed property
struct Hesap {
    var toplam: Double
    var adet: Int
    var ortalama: Double {
        get { toplam / Double(adet) }
        set { toplam = newValue * Double(adet) }
    }
}
var h = Hesap(toplam: 100, adet: 4)
print(h.ortalama) // 25.0
h.ortalama = 30
print(h.toplam) // 120.0

// 3. Başka bir property'den türetilen değer
struct Insan {
    var ad: String
    var soyad: String
    var tamAd: String {
        "\(ad) \(soyad)"
    }
}
let i = Insan(ad: "Ada", soyad: "Lovelace")
print(i.tamAd) // Ada Lovelace

// 4. Sınıfta computed property
class Urun {
    var birimFiyat: Double
    var adet: Int
    var toplamFiyat: Double {
        Double(adet) * birimFiyat
    }
    init(birimFiyat: Double, adet: Int) {
        self.birimFiyat = birimFiyat
        self.adet = adet
    }
}
let u = Urun(birimFiyat: 15, adet: 3)
print(u.toplamFiyat) // 45.0
