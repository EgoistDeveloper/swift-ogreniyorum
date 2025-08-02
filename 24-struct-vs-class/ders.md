# Struct vs. Class – Derinlemesine Karşılaştırma (Swift)

Swift’te veri modelleme için iki yaygın yapı vardır: **Struct** (yapı) ve **Class** (sınıf). Her ikisi de benzer şekilde kullanılabilir, ancak aralarında önemli farklar bulunur.

---

## 📌 Temel Tanımlar

- **Struct**: Değer tipidir. Kopyalandığında yeni bir örnek oluşur.
- **Class**: Referans tipidir. Kopyalandığında aynı örneğe referans verilir.

---

## 📌 Kullanım Şekli

### Struct Tanımı
```swift
struct Kitap {
    var ad: String
    var sayfaSayisi: Int
}
```

### Class Tanımı
```swift
class Kitap {
    var ad: String
    var sayfaSayisi: Int
    init(ad: String, sayfaSayisi: Int) {
        self.ad = ad
        self.sayfaSayisi = sayfaSayisi
    }
}
```

---

## 📌 Struct ve Class Arasındaki Temel Farklar

| Özellik               | Struct                        | Class                          |
|-----------------------|------------------------------|-------------------------------|
| Tip                   | Değer tipi                   | Referans tipi                 |
| Miras                 | Yok                          | Var                           |
| Deinit (Yıkıcı)       | Yok                          | Var                           |
| Mutability (Değiştirilebilirlik) | `mutating` ile değişir   | Doğrudan değiştirilebilir     |
| Kopyalama             | Yeni kopya oluşturur         | Aynı referansa işaret eder    |

---

## 📌 Kod ile Farklar

### Struct Kopyalama
```swift
var kitap1 = Kitap(ad: "Suç ve Ceza", sayfaSayisi: 670)
var kitap2 = kitap1
kitap2.ad = "Sefiller"
print(kitap1.ad) // "Suç ve Ceza"
print(kitap2.ad) // "Sefiller"
```

### Class Kopyalama
```swift
var kitap1 = Kitap(ad: "Suç ve Ceza", sayfaSayisi: 670)
var kitap2 = kitap1
kitap2.ad = "Sefiller"
print(kitap1.ad) // "Sefiller"
print(kitap2.ad) // "Sefiller"
```

---

## 📌 Miras Kullanımı (Class ile)
```swift
class Roman: Kitap {
    var tur: String = "Roman"
}
```

Struct’lar miras alamaz.

---

## 📌 Deinit Kullanımı (Sadece Class)
```swift
class Kaynak {
    deinit {
        print("Yıkıcı çalıştı")
    }
}
```

---

## 📌 Mutability (Değiştirilebilirlik)

Struct içinde bir özelliği değiştirmek için `mutating` kullanılır:

```swift
struct Sayac {
    var deger: Int
    mutating func arttir() {
        deger += 1
    }
}
```

Class’ta ise doğrudan değiştirilebilir:

```swift
class Sayac {
    var deger: Int
    func arttir() {
        deger += 1
    }
}
```

---

## 📌 Ne Zaman Struct, Ne Zaman Class Kullanmalı?

- **Struct**: Daha küçük veri grupları, model nesneleri, thread-safe gereksinimler.
- **Class**: Miras, referans paylaşımı, yaşam döngüsü kontrolü (deinit), karmaşık veri yapıları.

---

## 📝 Özet

- Struct ve Class benzer görünse de, değer ve referans tipi farkı kodun davranışını kökten değiştirir.
- Struct’lar Swift’te tercih edilen veri tipidir; class ise nesne tabanlı programlamada miras ve referans için kullanılır.
