# 13 - Error Handling (Hata Yönetimi)

Swift’te hata yönetimi, programın çalışma sırasında oluşabilecek hataları yakalamak ve uygun şekilde ele almak için kullanılır.

---

## Temel Kavramlar

- **Error Protocolü**: Hatayı temsil eden tiplerin uyduğu bir protokoldür.
- **Throwing Fonksiyonlar**: Hata fırlatabilen (`throw`) fonksiyonlar.
- **do-catch Bloğu**: Hataları yakalamak için kullanılır.
- **try, try?, try!**: Hata fırlatan kodları çağırmak için kullanılır.

---

## Error Protocolü ve Hata Oluşturmak

Bir hata tipini tanımlamak için `Error` protokolüne uyan bir enum veya struct kullanılır:

```swift
enum DosyaHatasi: Error {
    case dosyaBulunamadi
    case yetkiYok
    case bilinmeyen
}
```

---

## Throwing Fonksiyon Tanımlama

Hata fırlatabilen bir fonksiyon `throws` anahtar kelimesi ile tanımlanır:

```swift
func dosyaOku(ad: String) throws -> String {
    if ad.isEmpty {
        throw DosyaHatasi.dosyaBulunamadi
    }
    // Dosya okuma işlemleri...
    return "Dosya içeriği"
}
```

---

## Hataları Yakalama: do-catch

Hata fırlatabilen kod, `do-catch` bloğu ile kullanılır:

```swift
do {
    let icerik = try dosyaOku(ad: "veri.txt")
    print(icerik)
} catch DosyaHatasi.dosyaBulunamadi {
    print("Dosya bulunamadı!")
} catch {
    print("Bilinmeyen hata: \(error)")
}
```

---

## try?, try!

- `try?`: Hata olursa nil döner, hata fırlatmaz.
- `try!`: Hata olursa programı çökertecek şekilde zorla çalıştırır (kullanımı tavsiye edilmez).

```swift
let icerik = try? dosyaOku(ad: "")
print(icerik) // nil döner
```

---

## Custom Error Mesajları

Hata tipine ek olarak açıklama eklemek için genellikle hata tipine bağlı olarak mesaj döndürülebilir.

---

## Egzersizler

1. Kendi hata tipinizi tanımlayın ve bir fonksiyonda throw edin.
2. Bir işlemi do-catch ile deneyin ve farklı hata tiplerinde özel mesajlar gösterin.
3. try?, try! kullanarak hata yönetimini gözlemleyin.

---

## Sonraki Ders

**14 - Guard ve Optional Binding**
