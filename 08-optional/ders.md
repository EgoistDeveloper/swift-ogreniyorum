# 08 - Optional (Seçimli) Tipler

Swift’te “Optional” (isteğe bağlı) tipler, bir değişkenin değerinin olup olmadığını güvenli şekilde kontrol etmemizi sağlar. Böylece “nil” (boş/değersiz) olabilecek durumlarda kodumuz hata vermeden çalışabilir.

---

## 1. Optional Nedir?

Optional, bir değişkenin değerinin olabileceği veya olmayabileceği anlamına gelir.  
Swift’te bir değişkenin tipinin sonuna `?` eklenirse, o değişken “optional” olur.

```swift
var isim: String? = "Ali"
var yas: Int? = nil
```
- `isim` değişkeninin değeri var: "Ali"
- `yas` değişkeninin değeri yok: `nil`

---

## 2. Neden Optional Kullanılır?

Bazı durumlarda, bir verinin olmayabileceğini (boş olabileceğini) belirtmek isteriz.  
Örneğin bir arama sonucunda veri gelmemişse, bir formda alan boş bırakılmışsa veya API’den veri gelmemişse.

---

## 3. Optional Değişken Tanımı

```swift
var sehir: String? = "İstanbul"
var telefon: String? // varsayılan olarak nil
```
Optional değişkenlerde değer olmayabilir, Swift bunu `nil` ile gösterir.

---

## 4. Optional Kontrolü (if ile)

Optional bir değişkeni doğrudan kullanmak hata verir!  
Önce değer olup olmadığını kontrol etmeliyiz.

```swift
var mesaj: String? = "Merhaba!"

if mesaj != nil {
    print(mesaj!) // ! ile değeri zorla açıp kullanıyoruz
}
```

---

## 5. Optional Çözümleme (Unwrapping)

### a) Force Unwrapping (`!`)

Değişkenin gerçekten değer içerdiğinden eminseniz, `!` ile içindeki değeri alabilirsiniz.

```swift
var ad: String? = "Ayşe"
print(ad!) // Ayşe
```
**Tehlikeli!** Eğer değer `nil` ise uygulama hata verir.

### b) Optional Binding (`if let`)

En güvenli yol, değer varsa kullanmak:

```swift
var soyad: String? = "Yılmaz"

if let gercekSoyad = soyad {
    print("Soyadı: \(gercekSoyad)")
} else {
    print("Soyadı yok.")
}
```
Bu yöntemde, `soyad` boşsa kod else kısmına gider.

### c) Guard Let ile Binding

Fonksiyon başında opsiyoneli çözümlemek için:

```swift
func selamVer(isim: String?) {
    guard let gercekIsim = isim else {
        print("İsim yok!")
        return
    }
    print("Merhaba \(gercekIsim)")
}

selamVer(isim: "Zeynep") // Merhaba Zeynep
selamVer(isim: nil)      // İsim yok!
```

---

## 6. Nil-Coalescing Operator (`??`)

Bir optional değişkenin değeri yoksa, alternatif bir değer kullanmak için:

```swift
var sehir: String? = nil
print(sehir ?? "Bilinmiyor") // Bilinmiyor
```
Burada `sehir` nil ise "Bilinmiyor" yazılır.

---

## 7. Optional Chaining

Birden fazla optional olan durumlarda zincirleme kontrol:

```swift
struct Kisi {
    var isim: String
    var telefon: String?
}

var ali = Kisi(isim: "Ali", telefon: nil)
print(ali.telefon?.count) // nil (telefon yok)
```

Optional chaining ile, telefon yoksa hata vermez, nil döner.

---

## 8. Pratik Örnekler

```swift
var not: Int? = 80
print(not ?? 0) // 80

not = nil
print(not ?? 0) // 0

// Kullanıcıdan alınan veri örneği
var kullaniciAdi: String? = nil
if let username = kullaniciAdi {
    print("Hoş geldin, \(username)")
} else {
    print("Kullanıcı adı girilmedi!")
}
```

---

## 9. Özeti

- Optional tipler, bir değişkenin değerinin olup olmadığını güvenli şekilde yönetmemizi sağlar.
- `?` ile tanımlanır, `nil` değeri alabilir.
- Optional çözümlerken `if let`, `guard let`, `??` ve chaining kullanılır.
- Zorla açma (`!`) risklidir, dikkatli kullanılmalı.

---

## Sonraki Ders

**09 - Nesne Tabanlı Programlama (Sınıflar ve Struct)**  
Bir sonraki derste Swift’te nesne tabanlı programlama, sınıflar ve yapılar konularını öğreneceğiz.