// 09 - Nesne Tabanlı Programlama (Class ve Struct) - Swift Örnekleri

// 1. Sınıf tanımı
class Araba {
    var marka: String
    var model: String
    var yil: Int

    init(marka: String, model: String, yil: Int) {
        self.marka = marka
        self.model = model
        self.yil = yil
    }

    func bilgiYazdir() {
        print("\(yil) model \(marka) \(model)")
    }
}

let araba1 = Araba(marka: "Toyota", model: "Corolla", yil: 2020)
araba1.bilgiYazdir() // 2020 model Toyota Corolla

// 2. Struct tanımı
struct Nokta {
    var x: Double
    var y: Double

    func yazdir() {
        print("Nokta: (\(x), \(y))")
    }
}

var nokta1 = Nokta(x: 3.0, y: 4.0)
nokta1.yazdir() // Nokta: (3.0, 4.0)

// 3. Class ve Struct farkı
var nokta2 = nokta1
nokta2.x = 10.0
nokta2.yazdir()     // Nokta: (10.0, 4.0)
nokta1.yazdir()     // Nokta: (3.0, 4.0) - değişmedi

let araba2 = araba1
araba2.marka = "Honda"
araba2.bilgiYazdir() // 2020 model Honda Corolla
araba1.bilgiYazdir() // 2020 model Honda Corolla - değişti!

// 4. Miras (Inheritance)
class Tasit {
    var tekerlekSayisi: Int
    init(tekerlekSayisi: Int) {
        self.tekerlekSayisi = tekerlekSayisi
    }
    func hareket() {
        print("Taşıt hareket ediyor")
    }
}

class Motorsiklet: Tasit {
    var marka: String
    init(marka: String) {
        self.marka = marka
        super.init(tekerlekSayisi: 2)
    }
    override func hareket() {
        print("\(marka) motorsiklet hareket ediyor")
    }
}

let m1 = Motorsiklet(marka: "Yamaha")
m1.hareket() // Yamaha motorsiklet hareket ediyor

// 5. Kullanıcı örneği
class Kullanici {
    var ad: String
    var yas: Int
    init(ad: String, yas: Int) {
        self.ad = ad
        self.yas = yas
    }
    func selamla() {
        print("Merhaba, ben \(ad)!\")
    }
}

let k1 = Kullanici(ad: "Ayşe", yas: 21)
k1.selamla() // Merhaba, ben Ayşe!