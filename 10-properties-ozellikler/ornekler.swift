// Stored property örneği
struct Kullanici {
    var isim: String
    var yas: Int
}

let kullanici = Kullanici(isim: "Ayşe", yas: 30)
print(kullanici.isim) // Ayşe

// Computed property örneği
struct Kare {
    var kenar: Double
    var alan: Double {
        return kenar * kenar
    }
}
let k = Kare(kenar: 4)
print(k.alan) // 16

// Lazy property örneği
struct ResimYukleyici {
    lazy var resimVerisi: String = {
        // Burada büyük bir resim verisi yüklendiğini varsayalım
        return "Resim yüklendi!"
    }()
}
var yukleyici = ResimYukleyici()
print(yukleyici.resimVerisi)

// Property observers örneği
class BankaHesabi {
    var bakiye: Double = 0 {
        willSet {
            print("Yeni bakiye geliyor: \(newValue)")
        }
        didSet {
            print("Bakiye değişti! Eski: \(oldValue), Yeni: \(bakiye)")
        }
    }
}
let hesap = BankaHesabi()
hesap.bakiye = 100

// Static property örneği
struct Uygulama {
    static var versiyon = "1.0"
}
print(Uygulama.versiyon) // "1.0"

// Enum'da computed property
enum Gun {
    case pazartesi, sali, carsamba
    var aciklama: String {
        switch self {
        case .pazartesi: return "Haftanın ilk günü"
        default: return "Diğer gün"
        }
    }
}
print(Gun.pazartesi.aciklama) // "Haftanın ilk günü"

// Computed property'de getter & setter
struct Hesap {
    private var _maas: Double = 0
    var maas: Double {
        get { _maas }
        set { _maas = newValue }
    }
}
var h = Hesap()
h.maas = 5000
print(h.maas)

// Static property'ler class ve struct'ta
class AyarlarClass {
    static var tema = "Koyu"
}
print(AyarlarClass.tema)