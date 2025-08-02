// public struct ve fonksiyon
public struct AcikStruct {
    public var veri: String
    public func selamla() {
        print("Merhaba!")
    }
}

// internal class (varsayılan)
class DahiliClass {
    var bilgi = "Sadece bu modülde erişilebilir"
}

// fileprivate değişken
fileprivate var dosyaIcindeGorunur = "Bu sadece bu dosyada erişilebilir"

// private property ve fonksiyon
struct GizliStruct {
    private var sifre: String = "1234"
    private func sifreyiGoster() -> String {
        return sifre
    }
    func aciklama() {
        print("Bu struct'ın şifresi gizli!")
    }
}

// Extension'da erişim kontrolü
struct Kullanici { }
extension Kullanici {
    fileprivate var id: Int { return 42 }
    private func gizliFonksiyon() { print("Sadece extension içinde!") }
}

// open class örneği (framework için uygundur)
open class AcikClass {
    open func overrideEdilebilirFonksiyon() {
        print("Bu fonksiyon başka bir modülde override edilebilir!")
    }
}

// Pratik struct örneği
class BankaHesabi {
    private var bakiye: Double = 0

    func paraYatir(miktar: Double) {
        bakiye += miktar
    }

    func bakiyeGoster() -> Double {
        return bakiye
    }
}

// private ile class örneği
class GizliClass {
    private var sifre = "abcd"

    func sifreyiOku() -> String {
        // sifre değişkenine sadece class'ın içinde erişilebilir!
        return sifre
    }
}

let nesne = GizliClass()
// nesne.sifre // HATA! Dışarıdan erişilemez.
print(nesne.sifreyiOku()) // Çıktı: abcd

// --- Dosya ayrımıyla örnekler ---

// Dosya: A.swift
struct GizliStruct {
    private var sifre = "1234"
    func sifreyiOku() -> String { sifre }
}

class GizliClass2 {
    private var sifre = "abcd"
    func sifreyiOku() -> String { sifre }
}

// Dosya: x.swift (Ayrı dosya)
let structNesne = GizliStruct()
// structNesne.sifre           // HATA! Erişemezsin.

let classNesne = GizliClass2()
// classNesne.sifre           // HATA! Erişemezsin.

// Doğru erişim:
print(structNesne.sifreyiOku()) // Çıktı: 1234
print(classNesne.sifreyiOku())  // Çıktı: abcd
