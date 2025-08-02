// 1. Basit subscript: kare alma
struct KareAl {
    subscript(deger: Int) -> Int {
        deger * deger
    }
}
let ka = KareAl()
print(ka[6]) // 36

// 2. Dizeyi tersten döndüren subscript
struct TersDize {
    subscript(deger: String) -> String {
        String(deger.reversed())
    }
}
let td = TersDize()
print(td["swift"]) // "tfiws"

// 3. Sözlük benzeri yapı: Harf sayacı
struct HarfSayaci {
    var metin: String
    subscript(harf: Character) -> Int {
        metin.filter { $0 == harf }.count
    }
}
let hs = HarfSayaci(metin: "subscript")
print(hs["s"]) // 2

// 4. Çoklu parametre ile matris erişimi
struct IntMatris {
    var satirlar: Int
    var sutunlar: Int
    var elemanlar: [Int]
    init(satirlar: Int, sutunlar: Int) {
        self.satirlar = satirlar
        self.sutunlar = sutunlar
        self.elemanlar = Array(repeating: 0, count: satirlar * sutunlar)
    }
    subscript(satir: Int, sutun: Int) -> Int {
        get {
            elemanlar[satir * sutunlar + sutun]
        }
        set {
            elemanlar[satir * sutunlar + sutun] = newValue
        }
    }
}
var mat = IntMatris(satirlar: 2, sutunlar: 3)
mat[0, 2] = 8
print(mat.elemanlar) // [0, 0, 8, 0, 0, 0]

// 5. Enum’da subscript kullanımı
enum HaftaGunleri: Int {
    case pazartesi = 1, sali, carsamba, persembe, cuma, cumartesi, pazar
    static subscript(gun: Int) -> String {
        switch gun {
        case 1: return "Pazartesi"
        case 2: return "Salı"
        case 3: return "Çarşamba"
        case 4: return "Perşembe"
        case 5: return "Cuma"
        case 6: return "Cumartesi"
        case 7: return "Pazar"
        default: return "Geçersiz"
        }
    }
}
print(HaftaGunleri[5]) // "Cuma"
