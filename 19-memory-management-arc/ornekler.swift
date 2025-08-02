// Basit ARC örneği
class Kedi {
    var isim: String
    init(isim: String) {
        self.isim = isim
        print("\(isim) oluşturuldu.")
    }
    deinit {
        print("\(isim) bellekten silindi.")
    }
}

var kedi1: Kedi? = Kedi(isim: "Pamuk")
kedi1 = nil // Çıktı: Pamuk bellekten silindi.


// Retain cycle örneği
class EvSahibi {
    var isim: String
    var kedi: Kedi2?
    init(isim: String) { self.isim = isim }
    deinit { print("\(isim) silindi.") }
}

class Kedi2 {
    var isim: String
    weak var sahip: EvSahibi?
    init(isim: String) { self.isim = isim }
    deinit { print("\(isim) silindi.") }
}

var sahip: EvSahibi? = EvSahibi(isim: "Mehmet")
var kedi2: Kedi2? = Kedi2(isim: "Mırnav")

sahip?.kedi = kedi2
kedi2?.sahip = sahip

sahip = nil  // Çıktı: Mehmet silindi.
kedi2 = nil  // Çıktı: Mırnav silindi.


// unowned örneği
class Patron {
    var isim: String
    var calisan: Calisan?
    init(isim: String) { self.isim = isim }
}

class Calisan {
    unowned var patron: Patron
    init(patron: Patron) { self.patron = patron }
}

var patron: Patron? = Patron(isim: "Ali")
var calisan: Calisan? = Calisan(patron: patron!)

patron = nil // patron silinir, calisan.patron erişilirse crash olur


// Closure retain cycle ve [weak self] kullanımı
class ViewController {
    var isim = "VC"
    func islemYap() {
        DispatchQueue.main.async { [weak self] in
            print(self?.isim ?? "Yok")
        }
    }
}
