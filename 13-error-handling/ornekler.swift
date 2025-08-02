// 13 - Error Handling (Hata Yönetimi)

// 1. Error protokolüne uyan bir hata tipi tanımlama
enum HesapHatasi: Error {
    case sifiraBolme
    case negatifSayi
}

// 2. Throwing fonksiyon
func bol(sayi: Int, bolen: Int) throws -> Int {
    if bolen == 0 {
        throw HesapHatasi.sifiraBolme
    }
    if sayi < 0 || bolen < 0 {
        throw HesapHatasi.negatifSayi
    }
    return sayi / bolen
}

// bol fonksiyonu örnekleri:

// 1) Geçerli bölme işlemi
do {
    let sonuc = try bol(sayi: 20, bolen: 4)
    print("20 / 4 = \(sonuc)") // Çıktı: 20 / 4 = 5
} catch {
    print("Hata oluştu: \(error)")
}

// 2) Sıfıra bölme hatası
do {
    let sonuc = try bol(sayi: 10, bolen: 0)
    print("Sonuç: \(sonuc)")
} catch HesapHatasi.sifiraBolme {
    print("Hata: Sıfıra bölme yapılamaz!") // Çıktı: Hata: Sıfıra bölme yapılamaz!
} catch HesapHatasi.negatifSayi {
    print("Hata: Negatif sayılarla bölme yapılamaz!")
} catch {
    print("Bilinmeyen hata: \(error)")
}

// 3) Negatif sayılarla bölme hatası
do {
    let sonuc = try bol(sayi: -8, bolen: 2)
    print("Sonuç: \(sonuc)")
} catch HesapHatasi.sifiraBolme {
    print("Hata: Sıfıra bölme yapılamaz!")
} catch HesapHatasi.negatifSayi {
    print("Hata: Negatif sayılarla bölme yapılamaz!") // Çıktı: Hata: Negatif sayılarla bölme yapılamaz!
} catch {
    print("Bilinmeyen hata: \(error)")
}