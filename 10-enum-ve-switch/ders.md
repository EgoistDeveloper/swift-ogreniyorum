# 10 - Enum (Sıralı Tipler) ve Switch Kullanımı

Swift’te enum (sıralı tipler), belirli bir grup değeri tek bir tip altında toplamak için kullanılır. Switch ise bu değerler üzerinde işlem yapmamızı sağlar.

---

## 1. Enum Nedir?

Enum, belirli sabit değerler kümesi tanımlamak için kullanılır.

```swift
enum Gun {
    case pazartesi
    case sali
    case carsamba
    case persembe
    case cuma
    case cumartesi
    case pazar
}
```

---

## 2. Enum Kullanımı

Bir enum değerini değişkende saklamak ve kontrol etmek:

```swift
var bugun = Gun.cuma

if bugun == .cuma {
    print("Hafta sonu yaklaşıyor!")
}
```

---

## 3. Switch ile Enum Kullanımı

Switch ifadesi, enum değerlerine göre farklı işlemler yapmamızı sağlar:

```swift
switch bugun {
case .pazartesi, .sali, .carsamba, .persembe:
    print("Hafta içi")
case .cuma:
    print("Cuma! Hafta sonu yaklaşıyor.")
case .cumartesi, .pazar:
    print("Hafta sonu")
}
```

---

## 4. Enum ile İlişkili Değerler

Enum üyeleriyle birlikte ek veri tutabiliriz:

```swift
enum Sonuc {
    case basarili
    case hatali(String)
}

let durum = Sonuc.hatali("Ağ bağlantısı yok")

switch durum {
case .basarili:
    print("İşlem başarılı!")
case .hatali(let mesaj):
    print("Hata: \(mesaj)")
}
```

---

## 5. Enum ile Raw Value Kullanımı

Enum üyelerine ham değerler (raw value) atanabilir:

```swift
enum Renk: String {
    case kirmizi = "Kırmızı"
    case mavi = "Mavi"
    case yesil = "Yeşil"
}

let seciliRenk = Renk.kirmizi
print(seciliRenk.rawValue) // Kırmızı
```

---

## 6. Pratik Örnekler

### Enum ile Basit Menü

```swift
enum MenuSecenek {
    case anaSayfa
    case ayarlar
    case cikis
}

func menuIslem(secenek: MenuSecenek) {
    switch secenek {
    case .anaSayfa:
        print("Ana sayfadasınız.")
    case .ayarlar:
        print("Ayarlar açıldı.")
    case .cikis:
        print("Çıkış yapıldı.")
    }
}

menuIslem(secenek: .ayarlar)
```

---

## 7. Özeti

- Enum ile sabit değerler tanımlanır.
- Switch ile enum değerleri üzerinde işlemler yapılır.
- Enum üyeleriyle birlikte ilişkili değerler veya raw value kullanılabilir.

---

## Sonraki Ders

**13 - Closures (Kapanımlar) ve Fonksiyonel Programlama Yaklaşımları**