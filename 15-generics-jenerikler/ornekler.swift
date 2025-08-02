// 15 - Generics (Jenerikler) örnekleri

// En basit generic fonksiyon
func yazdir<T>(deger: T) {
    print(deger)
}

yazdir(deger: 42)           // Int
yazdir(deger: "Merhaba")    // String
yazdir(deger: 3.14)         // Double

// Generic struct örneği
struct Kutu<T> {
    var icerik: T
}

let intKutu = Kutu(icerik: 123)
let stringKutu = Kutu(icerik: "Swift")
print(intKutu.icerik)       // 123
print(stringKutu.icerik)    // Swift

// Generic tip kısıtlaması (Comparable ile)
func maksimum<T: Comparable>(_ x: T, _ y: T) -> T {
    return x > y ? x : y
}

print(maksimum(10, 20))         // 20
print(maksimum("Ali", "Veli"))  // Veli

// Array ve Dictionary'nin generic kullanımı
let sayilar: [Int] = [1, 2, 3]
let isimler: [String] = ["Ayşe", "Fatma"]
let sozluk: [String: Double] = ["pi": 3.14, "e": 2.71]

// Generic fonksiyon ile dizinin ilk elemanını döndürme
func ilkEleman<T>(dizi: [T]) -> T? {
    return dizi.first
}

print(ilkEleman(dizi: sayilar))    // Optional(1)
print(ilkEleman(dizi: isimler))    // Optional("Ayşe")
