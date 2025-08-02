// 1. Custom Error Enum
enum DosyaHatasi: Error {
    case bulunamadi
    case okumaHatasi
}

// 2. throws ile hata fırlatan fonksiyon
func dosyaOku(path: String) throws -> String {
    guard path == "veri.txt" else {
        throw DosyaHatasi.bulunamadi
    }
    return "Dosya içeriği"
}

// 3. Error propagation zinciri
func veriIsle(path: String) throws -> String {
    let icerik = try dosyaOku(path: path)
    return "İşlenen veri: \(icerik)"
}

// 4. do-catch ile hata yakalama
do {
    let sonuc = try veriIsle(path: "yanlis.txt")
    print(sonuc)
} catch DosyaHatasi.bulunamadi {
    print("Dosya bulunamadı!")
} catch {
    print("Beklenmeyen hata: \(error)")
}

// 5. try?, try! ile hata işleme
let veri1 = try? dosyaOku(path: "hatalı.txt") // nil döner
let veri2 = try! dosyaOku(path: "veri.txt")   // hata yoksa çalışır
print(veri1)
print(veri2)