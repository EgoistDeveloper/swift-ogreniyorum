# 🛑 Error Propagation ve Custom Error Handling

Swift’te hata yönetimi, kodunuzun güvenli ve öngörülebilir çalışmasını sağlar. Özellikle hata yayılımı (error propagation) ve özel hata tipleri (custom error types) ile hataları merkezi ve esnek bir şekilde ele alabilirsiniz.

## 📢 Error Propagation (Hata Yayılımı) Nedir?

Bir fonksiyonda oluşan hatayı üst seviyedeki fonksiyona iletmeye “hata yayılımı” denir. Swift’te hata fırlatmak için `throws` anahtar kelimesi kullanılır.

```swift
func dosyaOku(path: String) throws -> String {
    guard path == "veri.txt" else {
        throw DosyaHatasi.bulunamadi
    }
    return "Dosya içeriği"
}
```

## 🏷️ Custom Error Types (Özel Hata Tipleri)

Kendi hata tipinizi tanımlamak için `Error` protokolünü kullanırsınız.

```swift
enum DosyaHatasi: Error {
    case bulunamadi
    case okumaHatasi
}
```

## 🔁 Hataları Yakalamak (do-catch ile)

Hata fırlatan fonksiyonları çağırırken `do-catch` bloğu kullanılır:

```swift
do {
    let veri = try dosyaOku(path: "yanlis.txt")
    print(veri)
} catch DosyaHatasi.bulunamadi {
    print("Dosya bulunamadı!")
} catch {
    print("Beklenmeyen hata: \(error)")
}
```

## 🚀 Error Propagation Zinciri

Birden fazla fırlatılabilen fonksiyon bir zincir oluşturduğunda hata, zincirin sonuna kadar iletilebilir.

```swift
func veriIsle(path: String) throws -> String {
    let icerik = try dosyaOku(path: path) // Hatayı propagate eder
    return "İşlenen veri: \(icerik)"
}
```

## 📦 try, try?, try!

- `try`: Hata varsa catch’e gider.
- `try?`: Hata olursa değer nil olur.
- `try!`: Hata olursa uygulama çöker.

```swift
let veri1 = try? dosyaOku(path: "yanlis.txt") // nil döner
let veri2 = try! dosyaOku(path: "veri.txt")   // hata yoksa çalışır
```

## 📝 Özet

- Kendi hata tiplerinizi tanımlayabilirsiniz.
- `throws` ile hata fırlatıp propagate edersiniz.
- do-catch ile hataları yakalarsınız.
- try, try?, try! ile farklı hata işleme seçenekleri mevcut.
