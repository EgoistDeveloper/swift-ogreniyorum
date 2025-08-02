// 1. Static property ve method
struct Ayarlar {
    static var tema: String = "Açık"
    static func temaDegistir(_ yeniTema: String) {
        tema = yeniTema
    }
}
Ayarlar.temaDegistir("Koyu")
print(Ayarlar.tema) // Koyu

// 2. Static property ile sayaç
struct Kullanici {
    static var toplam = 0
    var ad: String
    init(ad: String) {
        self.ad = ad
        Kullanici.toplam += 1
    }
}
let k1 = Kullanici(ad: "Ada")
let k2 = Kullanici(ad: "Turing")
print(Kullanici.toplam) // 2

// 3. Class method override
class Arac {
    class func tur() -> String { "Genel Araç" }
}
class Bisiklet: Arac {
    override class func tur() -> String { "Bisiklet" }
}
print(Arac.tur())     // Genel Araç
print(Bisiklet.tur()) // Bisiklet
