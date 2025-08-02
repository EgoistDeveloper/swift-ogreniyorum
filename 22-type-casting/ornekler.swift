class Hayvan {}
class Kedi: Hayvan {
    func miyavla() { print("Miyav!") }
}
class Kopek: Hayvan {
    func havla() { print("Hav!") }
}

// Temel Type Casting Örnekleri

let hayvan: Hayvan = Kedi()

// as? ile güvenli şekilde alt tipe dönüştürme
if let kedi = hayvan as? Kedi {
    kedi.miyavla() // Miyav!
}

// as! ile zorunlu dönüşüm (eminsek kullanılabilir)
let kesinKedi = hayvan as! Kedi
kesinKedi.miyavla() // Miyav!

// Hatalı forced casting örneği (çalıştırınca crash olur)
// let kesinKopek = hayvan as! Kopek // Runtime Error!

// Any ile karışık dizi ve type casting
let karisik: [Any] = [Kedi(), Hayvan(), Kopek(), "Swift", 42]

for nesne in karisik {
    if let kedi = nesne as? Kedi {
        kedi.miyavla()
    } else if let kopek = nesne as? Kopek {
        kopek.havla()
    } else if let hayvan = nesne as? Hayvan {
        print("Bu bir hayvan.")
    } else {
        print("Bilinmeyen tip: \(nesne)")
    }
}

// Protokol ile type casting
protocol Sesli {
    func sesCikar()
}

class Kus: Hayvan, Sesli {
    func sesCikar() { print("Cik cik!") }
}

let kus = Kus()
if let sesli = kus as? Sesli {
    sesli.sesCikar() // Cik cik!
}

// Egzersiz: Yalnızca Kedi nesnelerini bulup miyavlatın
let dizi: [Any] = [Kedi(), Kopek(), "Swift", 42]
for nesne in dizi {
    if let kedi = nesne as? Kedi {
        kedi.miyavla()
    }
}