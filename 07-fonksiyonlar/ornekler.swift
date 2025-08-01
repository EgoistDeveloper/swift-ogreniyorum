// 07 - Fonksiyonlar: Swift Örnekleri

// 1. Temel fonksiyon tanımı ve çağırma
func selamla() {
    print("Merhaba Swift!")
}

selamla() // Merhaba Swift!

// 2. Parametreli fonksiyonlar
func topla(sayi1: Int, sayi2: Int) {
    print("Sonuç:", sayi1 + sayi2)
}

topla(sayi1: 3, sayi2: 7) // Sonuç: 10

// 3. Dönen değerli fonksiyonlar
func carp(s1: Int, s2: Int) -> Int {
    return s1 * s2
}

let sonuc = carp(s1: 4, s2: 5)
print("Çarpım sonucu:", sonuc) // 20

// 4. Birden fazla parametre ve return
func tamIsim(ad: String, soyad: String) -> String {
    return ad + " " + soyad
}

let isim = tamIsim(ad: "Ali", soyad: "Veli")
print(isim) // Ali Veli

// 5. Void (geri dönmeyen) fonksiyonlar
func yazdir(mesaj: String) {
    print(mesaj)
}

yazdir(mesaj: "Swift öğreniyorum!")

// 6. Varsayılan (default) parametreler
func selamVer(kime: String = "Dünya") {
    print("Merhaba \(kime)!")
}

selamVer()            // Merhaba Dünya!
selamVer(kime: "Ali") // Merhaba Ali!

// 7. Fonksiyonlarda dönüş tipleri
func birSeyYap() -> Void {
    print("Bir şey yapıldı.")
}
birSeyYap()

// 8. Kapsamlı fonksiyon örnekleri
func maksimum(_ a: Int, _ b: Int) -> Int {
    if a > b {
        return a
    } else {
        return b
    }
}

print("Büyük olan:", maksimum(10, 20)) // Büyük olan: 20

func ortalama(_ sayilar: [Double]) -> Double {
    let toplam = sayilar.reduce(0, +)
    return toplam / Double(sayilar.count)
}

print("Ortalama:", ortalama([3, 7, 9])) // Ortalama: 6.333...

// 9. Fonksiyonlarda döngü ve koleksiyon kullanımı
func diziYazdir(_ dizi: [String]) {
    for eleman in dizi {
        print(eleman)
    }
}

diziYazdir(["elma", "muz", "kiraz"])
