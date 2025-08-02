// Struct ile değer tipi örneği
struct KitapStruct {
    var ad: String
    var sayfaSayisi: Int
}
var s1 = KitapStruct(ad: "Suç ve Ceza", sayfaSayisi: 670)
var s2 = s1
s2.ad = "Sefiller"
print("Struct - s1.ad:", s1.ad) // "Suç ve Ceza"
print("Struct - s2.ad:", s2.ad) // "Sefiller"

// Class ile referans tipi örneği
class KitapClass {
    var ad: String
    var sayfaSayisi: Int
    init(ad: String, sayfaSayisi: Int) {
        self.ad = ad
        self.sayfaSayisi = sayfaSayisi
    }
}
var c1 = KitapClass(ad: "Suç ve Ceza", sayfaSayisi: 670)
var c2 = c1
c2.ad = "Sefiller"
print("Class - c1.ad:", c1.ad) // "Sefiller"
print("Class - c2.ad:", c2.ad) // "Sefiller"

// Mutating örneği
struct SayacStruct {
    var deger = 0
    mutating func arttir() { deger += 1 }
}
var ss = SayacStruct()
ss.arttir()
print("Struct sayaç:", ss.deger)

class SayacClass {
    var deger = 0
    func arttir() { deger += 1 }
}
let sc = SayacClass()
sc.arttir()
print("Class sayaç:", sc.deger)

// Deinit örneği (Class için)
class Kaynak {
    deinit {
        print("Class yıkıcı çalıştı")
    }
}
var kaynak: Kaynak? = Kaynak()
kaynak = nil // Class yıkıcı çalışır

// Miras örneği (Class için)
class Hayvan {
    var isim: String
    init(isim: String) { self.isim = isim }
}
class Kedi: Hayvan {
    var tur = "Kedi"
}
let k = Kedi(isim: "Pamuk")
print("Hayvan adı:", k.isim, "Tür:", k.tur)